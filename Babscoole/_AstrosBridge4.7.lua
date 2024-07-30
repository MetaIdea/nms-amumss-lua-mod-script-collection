NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "AstrosBridge.pak",
["MOD_AUTHOR"]      = "AstronautInOrbit",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.72",
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom wall front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN" />
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                                {"TransX", "3"},
                                {"TransY", "2.4"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
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
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTri" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-5.2" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="12.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-112.5" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="0.2" />
        <Property name="ScaleZ" value="0.75" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR_TRI.SCENE.MBIN" />
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
                    ["EXML_CHANGE_TABLE"] =
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
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Frontrow_TilesL1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="9.8" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.6" />
        <Property name="ScaleY" value="1.1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Frontrow_TilesCenter" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="9.8" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Frontrow_TilesR1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="9.8" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.6" />
        <Property name="ScaleY" value="1.1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLCURVED.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN",},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FleetTerminal"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Galaxy globe" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1.5" />
        <Property name="ScaleZ" value="1.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TOY_CORE.SCENE.MBIN" />
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
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="BridgeScanner" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1" />
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
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="HelmDesk" />
      <Property name="NameHash" value="1840047114" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="-12" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\HELMDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_Bridge_FrontL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.8" />
        <Property name="TransY" value="1.05" />
        <Property name="TransZ" value="-10.4" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="180" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.8" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_Bridge_FrontR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.8" />
        <Property name="TransY" value="-0.7" />
        <Property name="TransZ" value="-11" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.8" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="OrangeMonitorL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.6" />
        <Property name="TransY" value="1.21" />
        <Property name="TransZ" value="-11.55" />
        <Property name="RotX" value="55" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.7" />
        <Property name="ScaleY" value="0.7" />
        <Property name="ScaleZ" value="0.1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="OrangeMonitorR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.1" />
        <Property name="TransY" value="1.21" />
        <Property name="TransZ" value="-11.55" />
        <Property name="RotX" value="55" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.7" />
        <Property name="ScaleY" value="0.7" />
        <Property name="ScaleZ" value="0.1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotDeskL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.6" />
        <Property name="TransY" value="0.8" />
        <Property name="TransZ" value="-10.65" />
        <Property name="RotX" value="-60" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotDeskR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.1" />
        <Property name="TransY" value="0.8" />
        <Property name="TransZ" value="-10.65" />
        <Property name="RotX" value="-60" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotBackgroundL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.81" />
        <Property name="TransY" value="1.65" />
        <Property name="TransZ" value="-11.95" />
        <Property name="RotX" value="30" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotBackgroundR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.81" />
        <Property name="TransY" value="1.65" />
        <Property name="TransZ" value="-11.95" />
        <Property name="RotX" value="30" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="mapL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.6" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="-11.6" />
        <Property name="RotX" value="30" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.46" />
        <Property name="ScaleY" value="0.1" />
        <Property name="ScaleZ" value="0.68" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\FLATPANEL2.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="mapR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.1" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="-11.6" />
        <Property name="RotX" value="30" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.46" />
        <Property name="ScaleY" value="0.1" />
        <Property name="ScaleZ" value="0.68" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\FLATPANEL3.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PILOTscreenLnear" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.5" />
        <Property name="TransY" value="1.75" />
        <Property name="TransZ" value="-11.9" />
        <Property name="RotX" value="-15" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PILOTscreenRnear" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.8" />
        <Property name="TransY" value="1.75" />
        <Property name="TransZ" value="-11.9" />
        <Property name="RotX" value="-15" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotscreenLfar" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.1" />
        <Property name="TransY" value="1.75" />
        <Property name="TransZ" value="-11.9" />
        <Property name="RotX" value="-15" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotscreenRfar" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.3" />
        <Property name="TransY" value="1.75" />
        <Property name="TransZ" value="-11.9" />
        <Property name="RotX" value="-15" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PILOTscreenFlatL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.3" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-10.7" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PILOTscreenFlatR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.5" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-10.7" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotscreenFlatL2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.2" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-10.7" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PilotscreenFlatR2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.5" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-10.7" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_Bridge_BackL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.7" />
        <Property name="TransY" value="-0.23" />
        <Property name="TransZ" value="2.3" />
        <Property name="RotX" value="168" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="180" />
        <Property name="ScaleX" value="0.7" />
        <Property name="ScaleY" value="1.6" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_Bridge_BackR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.7" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="2" />
        <Property name="RotX" value="168" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.7" />
        <Property name="ScaleY" value="1.6" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_railing_BackL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="2.05" />
        <Property name="TransZ" value="2.7" />
        <Property name="RotX" value="180" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="-11" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="2.5" />
        <Property name="ScaleZ" value="0.8" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_railing_BackR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="-0.5" />
        <Property name="TransZ" value="3.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="11" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="2.5" />
        <Property name="ScaleZ" value="0.8" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="lower stairs left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7" />
        <Property name="TransY" value="-1.1" />
        <Property name="TransZ" value="2" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="lower stairs right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7" />
        <Property name="TransY" value="-1.1" />
        <Property name="TransZ" value="2" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="lower stairs middle" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.1" />
        <Property name="TransZ" value="2" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="TechStationCurvedRailingL front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-11.8" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.8" />
        <Property name="ScaleY" value="1.3" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="TechStationCurvedRailingR front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="11.8" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.8" />
        <Property name="ScaleY" value="1.3" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="TechStationCurvedRailingL side" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10.3" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="6.6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.8" />
        <Property name="ScaleY" value="1.3" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="TechStationCurvedRailingR side" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10.3" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="6.6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.8" />
        <Property name="ScaleY" value="1.3" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
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
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                    ["EXML_CHANGE_TABLE"] =
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
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Center Floor collision cylinder" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.65" />
        <Property name="TransZ" value="-18" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Cylinder" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="23" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pilot station center collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-27.3" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.5" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain railing center collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-11.6" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="0.5" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="0.2" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain railing right collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.9" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-13.4" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.4" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain railing left collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.9" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-13.4" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.4" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="back door Floor collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="16" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="7" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right door Floor collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left door Floor collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="transporter upper right collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="transporter upper left collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left curved back collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right curved back collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY",   "180"},
                                {"ScaleX", "0.7"},
                                {"ScaleY", "0.01"},
                                {"ScaleZ", "0.7"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPCCaptain_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.1" />
            <Property name="TransY" value="-1.12" />
            <Property name="TransZ" value="-14.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_1stMate_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.1" />
            <Property name="TransY" value="-1.12" />
            <Property name="TransZ" value="-14.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_BackL2_STAND_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-9" />
            <Property name="TransY" value="1.94" />
            <Property name="TransZ" value="8" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_BackR2_STAND_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="9" />
            <Property name="TransY" value="1.96" />
            <Property name="TransZ" value="8" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_PilotL_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.8" />
            <Property name="TransY" value="-1.15" />
            <Property name="TransZ" value="-25" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_PilotR_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2" />
            <Property name="TransY" value="-1.15" />
            <Property name="TransZ" value="-25" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPCNAV_STAND_" />
          <Property name="NameHash" value="654097330" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.981092" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-0.130298" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-99" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ObjectSpawner" />
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
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE1" />
              <Property name="NameHash" value="1611483558" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="12" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE2" />
              <Property name="NameHash" value="1923083979" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-4" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="12" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE3" />
              <Property name="NameHash" value="4243587945" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="4" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="12" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE4" />
              <Property name="NameHash" value="843345421" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-13" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="-5" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="-90" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE5" />
              <Property name="NameHash" value="3172107179" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="13" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="-5" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="90" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
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
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="RefDrone" />
              <Property name="NameHash" value="1298127706" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0.26913" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="45" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\DRONE.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ColourData"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="25" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="25" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="25" />
        <Property name="TransZ" value="-25" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="25" />
        <Property name="TransZ" value="15" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "11"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter1"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "-0.1"},
                                {"TransZ", "6.315618"},
                                {"RotY",   "135"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "-0.1"},
                                {"TransZ", "6.31562"},
                                {"RotY",   "-135"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof left corner" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="8" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof middle back" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="8" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof right corner" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="8" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof side right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="5.5" />
        <Property name="TransZ" value="-3.9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="4" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof side left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="5.5" />
        <Property name="TransZ" value="-3.9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="4" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof top middle middle " />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="12" />
        <Property name="TransZ" value="1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="3.5" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof top middle front " />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="12" />
        <Property name="TransZ" value="-13.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="4.5" />
        <Property name="ScaleZ" value="2.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom FRAME" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.2" />
        <Property name="ScaleY" value="0.93" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\BIOROOM_FRAME.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge floor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.7" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.4" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge floor 1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.5" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge floor 2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.7" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM_FLOOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge underfloor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-5.9" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.4" />
        <Property name="ScaleY" value="6.2" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Midfloor under transporter" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.16" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="9" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor back in front of back door" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.62" />
        <Property name="TransZ" value="9" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.8" />
        <Property name="ScaleY" value="2.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor door right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor door left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor angle right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="1.63" />
        <Property name="TransZ" value="10" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor angle left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="1.63" />
        <Property name="TransZ" value="10" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall top above back door" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="7.9" />
        <Property name="TransZ" value="14" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall back above back door" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="5.4" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="0.65" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall back in front of back door 3" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="9.6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall door right 1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall door left 5" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall angle right 3" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7.5" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="7.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall angle left 4" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7.5" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="7.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under left door front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-11.8" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.9" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under right door front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="11.8" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.9" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door right left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="-5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door right right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door left right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="-5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door left left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under center stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.5" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under left door outside" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under right door outside" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right door entrance wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right door entrance wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left door entrance wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left door entrance wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="back door entrance wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.7" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="16.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="back door entrance wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.7" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="16.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingFront" />
      <Property name="NameHash" value="0" />
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
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingRAngle" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingLAngle" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriLBack" />
      <Property name="NameHash" value="0" />
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
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriLdoor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingRSide" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingLSide" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Backrow_TilesL1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.6" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Backrow_TilesCenter" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Backrow_TilesR1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.6" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.3" />
        <Property name="TransZ" value="6" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="6.8" />
        <Property name="TransY" value="-1.2" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-6.8" />
        <Property name="TransY" value="-1.2" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RefTerminal" />
      <Property name="NameHash" value="737739852" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.2" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captainchair1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-13.5" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pilotstation" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.8" />
        <Property name="TransZ" value="-15" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="stairs railings" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.9" />
        <Property name="TransZ" value="-12" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackWall" />
      <Property name="NameHash" value="2443808107" />
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
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="deskmonitorR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="12" />
        <Property name="TransY" value="1.7" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="deskmonitorL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12" />
        <Property name="TransY" value="1.7" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="2443808107" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="cockpita" />
      <Property name="NameHash" value="2443808107" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CIRCULAR RAILING" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.1" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE.SCENE.EXML",
                    ["EXML_CHANGE_TABLE"] =
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
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Center Floor collision cylinder" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.65" />
        <Property name="TransZ" value="-18" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Cylinder" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="23" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pilot station center collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-27.3" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.5" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain railing center collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-11.6" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="0.5" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="0.2" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain railing right collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.9" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-13.4" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.4" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain railing left collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.9" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-13.4" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.4" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="back door Floor collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="16" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="7" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right door Floor collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left door Floor collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="transporter upper right collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="transporter upper left collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left curved back collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right curved back collision" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY",   "180"},
                                {"ScaleX", "0.7"},
                                {"ScaleY", "0.01"},
                                {"ScaleZ", "0.7"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPCCaptain_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.1" />
            <Property name="TransY" value="-1.12" />
            <Property name="TransZ" value="-14.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_1stMate_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.1" />
            <Property name="TransY" value="-1.12" />
            <Property name="TransZ" value="-14.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_BackL2_STAND_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-9" />
            <Property name="TransY" value="1.94" />
            <Property name="TransZ" value="8" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_BackR2_STAND_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="9" />
            <Property name="TransY" value="1.96" />
            <Property name="TransZ" value="8" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_PilotL_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.8" />
            <Property name="TransY" value="-1.15" />
            <Property name="TransZ" value="-25" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPC_PilotR_SIT_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2" />
            <Property name="TransY" value="-1.15" />
            <Property name="TransZ" value="-25" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPCNAV_STAND_" />
          <Property name="NameHash" value="654097330" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.981092" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-0.130298" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-99" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ObjectSpawner" />
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
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE1" />
              <Property name="NameHash" value="1611483558" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="12" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE2" />
              <Property name="NameHash" value="1923083979" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-4" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="12" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE3" />
              <Property name="NameHash" value="4243587945" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="4" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="12" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE4" />
              <Property name="NameHash" value="843345421" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-13" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="-5" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="-90" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PROPTDRAPE5" />
              <Property name="NameHash" value="3172107179" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="13" />
                <Property name="TransY" value="7.5" />
                <Property name="TransZ" value="-5" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="90" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
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
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="RefDrone" />
              <Property name="NameHash" value="1298127706" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0.26913" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="45" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\DRONE.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ColourData"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="25" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="25" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="25" />
        <Property name="TransZ" value="-25" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="25" />
        <Property name="TransZ" value="15" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "11"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "-0.1"},
                                {"TransZ", "6.31562"},
                                {"RotY",   "-135"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof left corner" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="8" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof middle back" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="8" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof right corner" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="8" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof side right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="5.5" />
        <Property name="TransZ" value="-3.9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="4" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof side left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="5.5" />
        <Property name="TransZ" value="-3.9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="4" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof top middle middle " />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="12" />
        <Property name="TransZ" value="1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="3.5" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom roof top middle front " />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="12" />
        <Property name="TransZ" value="-13.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="4.5" />
        <Property name="ScaleZ" value="2.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bioroom FRAME" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.2" />
        <Property name="ScaleY" value="0.93" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\BIOROOM_FRAME.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge floor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.7" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.4" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge floor 1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.5" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge floor 2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.7" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM_FLOOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge underfloor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-5.9" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.4" />
        <Property name="ScaleY" value="6.2" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Midfloor under transporter" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.16" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="9" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor back in front of back door" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.62" />
        <Property name="TransZ" value="9" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.8" />
        <Property name="ScaleY" value="2.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor door right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor door left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor angle right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="1.63" />
        <Property name="TransZ" value="10" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as floor angle left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="1.63" />
        <Property name="TransZ" value="10" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall top above back door" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="7.9" />
        <Property name="TransZ" value="14" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall back above back door" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="5.4" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="0.65" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall back in front of back door 3" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="9.6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall door right 1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall door left 5" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall angle right 3" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7.5" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="7.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall angle left 4" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7.5" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="7.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under left door front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-11.8" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.9" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under right door front" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="11.8" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.9" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door right left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="-5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door right right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door left right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="-5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall above door left left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-14" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under center stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.5" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.5" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under left door outside" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom wall as wall under right door outside" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right door entrance wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="right door entrance wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left door entrance wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="-3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="left door entrance wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="16" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="back door entrance wall left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.7" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="16.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="back door entrance wall right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.7" />
        <Property name="TransY" value="-2.1" />
        <Property name="TransZ" value="16.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingFront" />
      <Property name="NameHash" value="0" />
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
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingRAngle" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingLAngle" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriLBack" />
      <Property name="NameHash" value="0" />
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
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriLdoor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingRSide" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FloorTilingLSide" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Backrow_TilesL1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.6" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Backrow_TilesCenter" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bridge_Backrow_TilesR1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="1.8" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.6" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.3" />
        <Property name="TransZ" value="6" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="6.8" />
        <Property name="TransY" value="-1.2" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-6.8" />
        <Property name="TransY" value="-1.2" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RefTerminal" />
      <Property name="NameHash" value="737739852" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.2" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captainchair1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-13.5" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pilotstation" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.8" />
        <Property name="TransZ" value="-15" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="stairs railings" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1.9" />
        <Property name="TransZ" value="-12" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackWall" />
      <Property name="NameHash" value="2443808107" />
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
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="deskmonitorR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="12" />
        <Property name="TransY" value="1.7" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="deskmonitorL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12" />
        <Property name="TransY" value="1.7" />
        <Property name="TransZ" value="-6.5" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="2443808107" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="cockpita" />
      <Property name="NameHash" value="2443808107" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2" />
        <Property name="TransZ" value="-9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CIRCULAR RAILING" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.1" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING.SCENE.MBIN" />
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
                    ["EXML_CHANGE_TABLE"] =
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
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="BridgeScanner" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1" />
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
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcMaintenanceComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE" />
  <Property name="NameHash" value="3449727632" />
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
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BRIDGEDOORBGL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2" />
        <Property name="TransY" value="1.5" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BRIDGEDOORBGR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2" />
        <Property name="TransY" value="1.5" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BRIDGEDOORBGC" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="4.5" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.2" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BRIDGEDOOR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="3.4" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.3" />
        <Property name="ScaleY" value="1.3" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\BRIDGEDOORS\ANIMATEDDOOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Back_CounterLeft" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-9.2" />
        <Property name="TransY" value="2.8" />
        <Property name="TransZ" value="9.2" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="0.4" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Back_CounterRight" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="9.2" />
        <Property name="TransY" value="2.8" />
        <Property name="TransZ" value="9.2" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="0.4" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="screenL1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12.2" />
        <Property name="TransY" value="3" />
        <Property name="TransZ" value="6.8" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="6" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="screenR1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="12.2" />
        <Property name="TransY" value="3" />
        <Property name="TransZ" value="6.8" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="6" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="screenL2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-9.5" />
        <Property name="TransY" value="3" />
        <Property name="TransZ" value="9.5" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="6" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="screenR2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="9.5" />
        <Property name="TransY" value="3" />
        <Property name="TransZ" value="9.5" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="6" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="screenL3" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7" />
        <Property name="TransY" value="3" />
        <Property name="TransZ" value="12" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="6" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="screenR3" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7" />
        <Property name="TransY" value="3" />
        <Property name="TransZ" value="12" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="6" />
        <Property name="ScaleY" value="5" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackwallLeftMonitor1" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12.9" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="7.4" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackwallRightMonitor1" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="12.9" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="7.4" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackwallLeftMonitor2" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10.1" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="10.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackwallRightMonitor2" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10.1" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="10.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackwallLeftMonitor3" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7.7" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="12.6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackwallRightMonitor3" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7.7" />
        <Property name="TransY" value="3.5" />
        <Property name="TransZ" value="12.6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall1Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-13.3" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="7.4" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall1Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="13.3" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="7.4" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall2Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10.3" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="10.4" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.13" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall2Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10.3" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="10.4" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.13" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall3Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7.3" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="13.4" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall3Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7.3" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="13.4" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall4Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-4.6" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackBottomWall4Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="4.6" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="14.2" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SideBottomWallRightRight" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-14" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="sideBottomWall4RightLeft" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-14" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="-5" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SideBottomWallLeftRight" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="14" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="sideBottomWall4LeftLeft" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="14" />
        <Property name="TransY" value="4.9" />
        <Property name="TransZ" value="-5" />
        <Property name="RotX" value="-180" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWallLeft" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-11.2" />
        <Property name="TransY" value="8.5" />
        <Property name="TransZ" value="8.5" />
        <Property name="RotX" value="-20" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.5" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow1Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-12.9" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="6.8" />
        <Property name="RotX" value="-120" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow1Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="12.9" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="6.8" />
        <Property name="RotX" value="-120" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow2Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-10.2" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="9.5" />
        <Property name="RotX" value="-120" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow2Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="10.2" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="9.5" />
        <Property name="RotX" value="-120" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow3Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7.5" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="12.2" />
        <Property name="RotX" value="-120" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow3Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="7.5" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="12.2" />
        <Property name="RotX" value="-120" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow4Left" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-4.7" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="14" />
        <Property name="RotX" value="-90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BackTopWindow4Right" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="4.7" />
        <Property name="TransY" value="6.5" />
        <Property name="TransZ" value="14" />
        <Property name="RotX" value="-90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="fanbackground" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="5" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="0.6" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Fan" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="6.3" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\VENTILATION\VENTUNIT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bluelight" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2" />
        <Property name="TransY" value="6.3" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="-90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Bluelight" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2" />
        <Property name="TransY" value="6.3" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="-90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE" />
  <Property name="NameHash" value="3449727632" />
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
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captain_platform" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.85" />
        <Property name="TransZ" value="0.6" />
        <Property name="RotX" value="180" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.15" />
        <Property name="ScaleY" value="0.1" />
        <Property name="ScaleZ" value="0.15" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_CEILING_3.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="captainchair1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.88" />
        <Property name="TransZ" value="1.3" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="chaircontrolsL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.47" />
        <Property name="TransY" value="1.05" />
        <Property name="TransZ" value="0.7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="-5" />
        <Property name="ScaleX" value="0.23" />
        <Property name="ScaleY" value="0.14" />
        <Property name="ScaleZ" value="0.7" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="chaircontrolsR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.47" />
        <Property name="TransY" value="1.05" />
        <Property name="TransZ" value="0.7" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="5" />
        <Property name="ScaleX" value="0.23" />
        <Property name="ScaleY" value="0.14" />
        <Property name="ScaleZ" value="0.7" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="chaircontrolsBack" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="1" />
        <Property name="RotX" value="18" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.24" />
        <Property name="ScaleY" value="0.1" />
        <Property name="ScaleZ" value="0.2" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CaptainOrangeMonitorL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.48" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0.47" />
        <Property name="RotX" value="55" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.2" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CaptainOrangeMonitorR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.48" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0.47" />
        <Property name="RotX" value="55" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.2" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DatapadL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.48" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0.4" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.3" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\SMALLCONSOLE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DatapadR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.5" />
        <Property name="TransY" value="1.69" />
        <Property name="TransZ" value="0.35" />
        <Property name="RotX" value="30" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.8" />
        <Property name="ScaleZ" value="0.7" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\DATA_PAD.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DatapadRscreen" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.53" />
        <Property name="TransY" value="1.69" />
        <Property name="TransZ" value="0.35" />
        <Property name="RotX" value="-50" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.35" />
        <Property name="ScaleY" value="0.35" />
        <Property name="ScaleZ" value="0.35" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\SCREENS\DROPPODSCREEN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CaptainTechL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.48" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0.7" />
        <Property name="RotX" value="5" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="-90" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.25" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TECHPANEL\TECHPANEL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CaptainTechR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.48" />
        <Property name="TransY" value="1.6" />
        <Property name="TransZ" value="0.7" />
        <Property name="RotX" value="5" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="-90" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="0.25" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TECHPANEL\TECHPANEL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CommandMonitorDeskL" />
      <Property name="NameHash" value="253667532" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.1" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="-1.8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="10" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CommandMonitorDeskR" />
      <Property name="NameHash" value="253667532" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.1" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="-1.8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="10" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CommandMonitorL" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.1" />
        <Property name="TransY" value="1.7" />
        <Property name="TransZ" value="-1.8" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.519386" />
        <Property name="ScaleY" value="0.519386" />
        <Property name="ScaleZ" value="0.519386" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CommandMonitorR" />
      <Property name="NameHash" value="576956202" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.1" />
        <Property name="TransY" value="1.7" />
        <Property name="TransZ" value="-1.8" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.519386" />
        <Property name="ScaleY" value="0.519386" />
        <Property name="ScaleZ" value="0.519386" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\CAPTAINBACKWALL.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE" />
  <Property name="NameHash" value="3449727632" />
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
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_Bridge_FrontL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.8" />
        <Property name="TransY" value="1.05" />
        <Property name="TransZ" value="-10.4" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="180" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.8" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Curved_Bridge_FrontR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.8" />
        <Property name="TransY" value="-0.7" />
        <Property name="TransZ" value="-11" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.8" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING.SCENE.EXML",
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
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Circular railing 1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-10.9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.51" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Circular railing 4" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-3" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-12.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-48" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Circular railing 5" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="3" />
        <Property name="TransY" value="-1" />
        <Property name="TransZ" value="-12.25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="48" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.5" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.5" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN" />
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