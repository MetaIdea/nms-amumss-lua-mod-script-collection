--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_WEIRDCOLORS_V572-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat10", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDBEAMPARTICLES_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat9", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDBEAMPARTICLES_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat12", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDSCROLLING_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat13", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDLIGHTBEAM_MAT3.MATERIAL.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat10", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDBEAMPARTICLES_MAT1.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat9", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDBEAMPARTICLES_MAT1.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat12", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDSCROLLING_MAT2.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Beammat13", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDLIGHTBEAM_MAT3.MATERIAL.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HUGEBEAM.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "HugeBeamLOD0", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HUGEBEAM\DUDHUGEBEAM_MAT.MATERIAL.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_podEgg_GrowthLOD0", "Name", "MATERIAL"},
                                {"Name", "_podEgg_GrowthLOD1", "Name", "MATERIAL"},
                                {"Name", "_podEgg_GrowthLOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL\DUDCONTOURDARKCREEP.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB2_podEgg_GrowthLOD0", "Name", "MATERIAL"},
                                {"Name", "SUB2_podEgg_GrowthLOD1", "Name", "MATERIAL"},
                                {"Name", "SUB2_podEgg_GrowthLOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL\DUDCONTOUR2MAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB3_podEgg_GrowthLOD0", "Name", "MATERIAL"},
                                {"Name", "SUB3_podEgg_GrowthLOD1", "Name", "MATERIAL"},
                                {"Name", "SUB3_podEgg_GrowthLOD2", "Name", "MATERIAL"},
                                {"Name", "_podEgg_NogrowthLOD0",   "Name", "MATERIAL"},
                                {"Name", "_podEgg_NogrowthLOD1",   "Name", "MATERIAL"},
                                {"Name", "_podEgg_NogrowthLOD2",   "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL\DUDCONTOUR1MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Body_LOD0", "Name", "MATERIAL"},
                                {"Name", "Body_LOD1", "Name", "MATERIAL"},
                                {"Name", "Body_LOD2", "Name", "MATERIAL"},
                                {"Name", "Body_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT\DUDCONTOUR1MAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB2_detail_hatchLOD0", "Name", "MATERIAL"},
                                {"Name", "_detail_PipesLOD0",     "Name", "MATERIAL"},
                                {"Name", "SUB2_detail_hatchLOD1", "Name", "MATERIAL"},
                                {"Name", "_detail_PipesLOD1",     "Name", "MATERIAL"},
                                {"Name", "SUB2_detail_hatchLOD2", "Name", "MATERIAL"},
                                {"Name", "_detail_PipesLOD2",     "Name", "MATERIAL"},
                                {"Name", "SUB2_detail_hatchLOD3", "Name", "MATERIAL"},
                                {"Name", "_detail_PipesLOD3",     "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT\DUDCONTOUR2MAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB1_detail_hatchLOD0", "Name", "MATERIAL"},
                                {"Name", "SUB1_detail_hatchLOD1", "Name", "MATERIAL"},
                                {"Name", "SUB1_detail_hatchLOD2", "Name", "MATERIAL"},
                                {"Name", "SUB1_detail_hatchLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT\DUDCONTOUR3MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Pod_LOD0", "Name", "MATERIAL"},
                                {"Name", "Pod_LOD1", "Name", "MATERIAL"},
                                {"Name", "Pod_LOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD\DUDCONTOUR1MAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB1Pod_LOD0",     "Name", "MATERIAL"},
                                {"Name", "Mesh_LOD0",        "Name", "MATERIAL"},
                                {"Name", "SUB1Pod_LOD1",     "Name", "MATERIAL"},
                                {"Name", "_Pipes_PipesLOD1", "Name", "MATERIAL"},
                                {"Name", "SUB1Pod_LOD2",     "Name", "MATERIAL"},
                                {"Name", "Mesh_LOD2",        "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD\DUDCONTOUR2MAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB2Pod_LOD0",  "Name", "MATERIAL"},
                                {"Name", "SUB1Mesh_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB2Pod_LOD1",  "Name", "MATERIAL"},
                                {"Name", "SUB1Mesh_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB2Pod_LOD2",  "Name", "MATERIAL"},
                                {"Name", "SUB1Mesh_LOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD\DUDCONTOUR3MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURORBMAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB1ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB1ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB1ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "SUB1ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURDARKRIBBED.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB2ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB2ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB2ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "SUB2ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURDARK.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB4ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB4ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB4ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "SUB4ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURDARKCREEP.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB5ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB5ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB5ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "SUB5ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURRIBBEDCREEP.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB6ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB6ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB6ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "SUB6ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURLIGHTCREEP.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB7ContourTower_LOD0", "Name", "MATERIAL"},
                                {"Name", "SUB7ContourTower_LOD1", "Name", "MATERIAL"},
                                {"Name", "SUB7ContourTower_LOD2", "Name", "MATERIAL"},
                                {"Name", "SUB7ContourTower_LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOUR3MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\FRACTALCUBE\SHAPE1FLOAT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB2Shape1FloatLOD0", "Name", "MATERIAL"},
                                {"Name", "SUB2Shape1FloatLOD1", "Name", "MATERIAL"},
                                {"Name", "SUB2Shape1FloatLOD2", "Name", "MATERIAL"},
                                {"Name", "SUB2Shape1FloatLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\FRACTALCUBE\SHAPE1FLOAT\DUDPULSEFLARE_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\GEOMETRIC.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "BaseLOD0", "Name", "MATERIAL"},
                                {"Name", "BaseLOD1", "Name", "MATERIAL"},
                                {"Name", "BaseLOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\GEOMETRIC\DUDLIGHTMATERIAL_MAT.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SmallVinesLOD0", "Name", "MATERIAL"},
                                {"Name", "SmallVinesLOD1", "Name", "MATERIAL"},
                                {"Name", "SmallVinesLOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\GEOMETRIC\DUDSMALLVINES_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\HUGEOBJECT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Vines_mat",   "Name", "MATERIAL"},
                                {"Name", "Vines_mat2",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat3",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat4",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat5",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat6",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat7",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat8",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat9",  "Name", "MATERIAL"},
                                {"Name", "Vines_mat10", "Name", "MATERIAL"},
                                {"Name", "Vines_mat11", "Name", "MATERIAL"},
                                {"Name", "Vines_mat1",  "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\HUGEOBJECT\DUDVINES_MAT12.MATERIAL.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SmallVines13", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\HUGEOBJECT\DUDSMALLVINES_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\MEDGEOMETRIC.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "MedGeometricLOD0", "Name", "MATERIAL"},
                                {"Name", "MedGeometricLOD1", "Name", "MATERIAL"},
                                {"Name", "MedGeometricLOD2", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\MEDGEOMETRIC\DUDLIGHTMATERIAL_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\FLOATJOINT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "FloatJointLOD0", "Name", "MATERIAL"},
                                {"Name", "FloatJointLOD1", "Name", "MATERIAL"},
                                {"Name", "FloatJointLOD2", "Name", "MATERIAL"},
                                {"Name", "FloatJointLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\FLOATJOINT\DUDFLOAT_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTURE.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "MStructureLOD0", "Name", "MATERIAL"},
                                {"Name", "MStructureLOD1", "Name", "MATERIAL"},
                                {"Name", "MStructureLOD2", "Name", "MATERIAL"},
                                {"Name", "MStructureLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTURE\DUDMSTRUCTURE_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SINGLEJOINT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SingleJointLOD0", "Name", "MATERIAL"},
                                {"Name", "SingleJointLOD1", "Name", "MATERIAL"},
                                {"Name", "SingleJointLOD2", "Name", "MATERIAL"},
                                {"Name", "SingleJointLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SINGLEJOINT\DUDMSTRUCTURE_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SMALLJOINT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SmallJointLOD0", "Name", "MATERIAL"},
                                {"Name", "SmallJointLOD1", "Name", "MATERIAL"},
                                {"Name", "SmallJointLOD2", "Name", "MATERIAL"},
                                {"Name", "SmallJointLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SMALLJOINT\DUDMSTRUCTURE_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "LargeLOD0", "Name", "MATERIAL"},
                                {"Name", "LargeLOD1", "Name", "MATERIAL"},
                                {"Name", "LargeLOD2", "Name", "MATERIAL"},
                                {"Name", "LargeLOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARD\DUDSHARD_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARDALT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ShardAlt", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARDALT\DUDSHARD_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SINGLESHARD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SingleShard", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SINGLESHARD\DUDSHARD_MAT.MATERIAL.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\TALLSHARD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "TallShard2LOD0", "Name", "MATERIAL"},
                                {"Name", "TallShard2LOD1", "Name", "MATERIAL"},
                                {"Name", "TallShard2LOD2", "Name", "MATERIAL"},
                                {"Name", "TallShard2LOD3", "Name", "MATERIAL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\TALLSHARD\DUDSHARD_MAT.MATERIAL.MBIN"}
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
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BEAMSTONE/DUDBEAMPARTICLES_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BeamParticles_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/BeamParticles_mat.metamaterial.mXml" />
	<Property name="Class" value="Translucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.100000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BEAMSTONE/DUDLIGHTBEAM_MAT3.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightBeam_mat3" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/LightBeam_mat2.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2106880" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BEAMSTONE/DUDSCROLLING_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Scrolling_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/Scrolling_mat.metamaterial.mXml" />
	<Property name="Class" value="Translucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.500000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HOVERING/DUDBEAMPARTICLES_MAT1.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BeamParticles_mat1" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/BeamParticles_mat.metamaterial.mXml" />
	<Property name="Class" value="Translucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.100000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HOVERING/DUDLIGHTBEAM_MAT3.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightBeam_mat3" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/LightBeam_mat2.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2106880" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HOVERING/DUDSCROLLING_MAT2.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Scrolling_mat2" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/Scrolling_mat.metamaterial.mXml" />
	<Property name="Class" value="Translucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.500000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM/DUDHUGEBEAM_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="HugeBeam_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/HugeBeam/Materials/HugeBeam_mat.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="5">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.020000" />
				<Property name="Y" value="0.050000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.200000" />
				<Property name="Z" value="0.200000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.600000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.800000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="2.000000" />
				<Property name="Y" value="3.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="11">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="3.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.800000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2139648" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURDETAIL/DUDCONTOUR1MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour1MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURDETAIL/DUDCONTOUR2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour2MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURDETAIL/DUDCONTOURDARKCREEP.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourDarkCreep" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="5">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="-0.100000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="-0.020000" />
				<Property name="Y" value="-0.020000" />
				<Property name="Z" value="0.030000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="4.000000" />
				<Property name="Z" value="2.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="11">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.700000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="34305" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT/DUDCONTOUR1MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour1MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT/DUDCONTOUR2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour2MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT/DUDCONTOUR3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour3MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD/DUDCONTOUR1MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour1MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD/DUDCONTOUR2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour2MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD/DUDCONTOUR3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour3MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOUR3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contour3MAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOURDARK.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourDark" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourSecond.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOURDARKCREEP.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourDarkCreep" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="5">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="-0.100000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="-0.020000" />
				<Property name="Y" value="-0.020000" />
				<Property name="Z" value="0.030000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="4.000000" />
				<Property name="Z" value="2.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="11">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.700000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="34305" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOURDARKRIBBED.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourDarkRibbed" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourSecond.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOURLIGHTCREEP.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourLightCreep" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="5">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="-0.100000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="-0.020000" />
				<Property name="Y" value="-0.020000" />
				<Property name="Z" value="0.030000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="4.000000" />
				<Property name="Z" value="2.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="11">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.700000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="34305" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOURORBMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourOrbMAT" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourSecond.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER/DUDCONTOURRIBBEDCREEP.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="contourRibbedCreep" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="5">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="-0.100000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="-0.010000" />
				<Property name="Y" value="0.010000" />
				<Property name="Z" value="0.010000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="-0.020000" />
				<Property name="Y" value="-0.020000" />
				<Property name="Z" value="0.030000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="4.000000" />
				<Property name="Z" value="2.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="11">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.700000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="34305" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT/DUDPULSEFLARE_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="PulseFlare_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/FractalCube/Shape1/Materials/PulseFlare_mat.metamaterial.mXml" />
	<Property name="Class" value="Translucent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="1.500000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2129920" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/FRACTALCUBE/DUDPULSEFLARE.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC/DUDLIGHTMATERIAL_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightMaterial_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/MedGeometric/Materials/LightMaterial_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.700000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.600000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2139648" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC/DUDSMALLVINES_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="SmallVines_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/HugeObject/Materials/SmallVines_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2105344" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT/DUDSMALLVINES_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="SmallVines_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/HugeObject/Materials/SmallVines_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2105344" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT/DUDVINES_MAT12.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Vines_mat12" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/HugeObject/Materials/Vines_mat12.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.100000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.300000" />
				<Property name="Y" value="0.300000" />
				<Property name="Z" value="0.300000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.300000" />
				<Property name="Y" value="0.300000" />
				<Property name="Z" value="0.300000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="11">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="2.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2138112" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC/DUDLIGHTMATERIAL_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightMaterial_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/MedGeometric/Materials/LightMaterial_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.700000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.600000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2139648" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT/DUDFLOAT_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Float_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/FloatJoint/Materials/Float_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="3.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="3.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="3.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.300000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE/DUDMSTRUCTURE_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="MStructure_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/MStructure/Materials/MStructure_mat.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SINGLEJOINT/DUDMSTRUCTURE_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="MStructure_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/MStructure/Materials/MStructure_mat.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SMALLJOINT/DUDMSTRUCTURE_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="MStructure_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/MStructure/Materials/MStructure_mat.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="1541" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD/DUDSHARD_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Shard_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/Shard/Materials/Shard_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="0.030000" />
				<Property name="Y" value="0.090000" />
				<Property name="Z" value="0.070000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.300000" />
				<Property name="Z" value="0.100000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.350000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="8203" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT/DUDSHARD_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Shard_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/Shard/Materials/Shard_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="0.030000" />
				<Property name="Y" value="0.090000" />
				<Property name="Z" value="0.070000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.300000" />
				<Property name="Z" value="0.100000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.350000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="8203" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SINGLESHARD/DUDSHARD_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Shard_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/FloorPieces/Materials/Shard2_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="8203" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD/DUDSHARD_MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Shard_mat" />
	<Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/Shard/Materials/Shard_mat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gWaveOneAmpAndPosOffsetVec4" />
			<Property name="Values">
				<Property name="X" value="0.030000" />
				<Property name="Y" value="0.090000" />
				<Property name="Z" value="0.070000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="6">
			<Property name="Name" value="gWaveOneFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="7">
			<Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.500000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="8">
			<Property name="Name" value="gWaveTwoAmplitudeVec4" />
			<Property name="Values">
				<Property name="X" value="0.100000" />
				<Property name="Y" value="0.300000" />
				<Property name="Z" value="0.100000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="9">
			<Property name="Name" value="gWaveTwoFrequencyVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="10">
			<Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.350000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="8203" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Crystal" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Crystal" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Crystal" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Trader" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODCREEP.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Trader" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODCREEP.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Trader" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Trader" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Trader" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/FRACTALCUBE/DUDPULSEFLARE.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Crystal" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/FRACTALCUBE/DUDPULSEFLARE.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Warrior" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="WarriorAlt" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Scientific" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]]
        },
    },
}