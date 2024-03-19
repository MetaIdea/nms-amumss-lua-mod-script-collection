--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_WeirdColors_v443-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.43",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FloatJoint_imposter", "Name", "AABBMINX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-10.025988"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FloatJoint_imposter", "Name", "AABBMAXX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10.025989"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FloatJoint_imposter", "Name", "AABBMAXY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "51.429756"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTURE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
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
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDBEAMPARTICLES_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="BeamParticles_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/BeamParticles_mat.metamaterial.mXml" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F23_TRANSLUCENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1.1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDLIGHTBEAM_MAT3.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="LightBeam_mat3" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/LightBeam_mat2.metamaterial.mXml" />
  <Property name="Class" value="GlowTranslucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BEAMSTONE\DUDSCROLLING_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Scrolling_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/Scrolling_mat.metamaterial.mXml" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F23_TRANSLUCENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.5" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDBEAMPARTICLES_MAT1.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="BeamParticles_mat1" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/BeamParticles_mat.metamaterial.mXml" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F23_TRANSLUCENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1.1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDLIGHTBEAM_MAT3.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="LightBeam_mat3" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/LightBeam_mat2.metamaterial.mXml" />
  <Property name="Class" value="GlowTranslucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HOVERING\DUDSCROLLING_MAT2.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Scrolling_mat2" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/Hovering/Materials/Scrolling_mat.metamaterial.mXml" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F23_TRANSLUCENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.5" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\HUGEBEAM\DUDHUGEBEAM_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="HugeBeam_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/BeamStone/HugeBeam/Materials/HugeBeam_mat.metamaterial.mXml" />
  <Property name="Class" value="GlowTranslucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.02" />
        <Property name="y" value="0.05" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0.2" />
        <Property name="z" value="0.2" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0.6" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.8" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="2" />
        <Property name="y" value="3" />
        <Property name="z" value="1" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="3" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0.8" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL\DUDCONTOUR1MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour1MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL\DUDCONTOUR2MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour2MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURDETAIL\DUDCONTOURDARKCREEP.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourDarkCreep" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="-0.1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.02" />
        <Property name="y" value="-0.02" />
        <Property name="z" value="0.03" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="4" />
        <Property name="z" value="2" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.7" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT\DUDCONTOUR1MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour1MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT\DUDCONTOUR2MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour2MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT\DUDCONTOUR3MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour3MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD\DUDCONTOUR1MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour1MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD\DUDCONTOUR2MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour2MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURPOD\DUDCONTOUR3MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour3MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOUR3MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contour3MAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourPrime.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURDARK.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourDark" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourSecond.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPODSET3.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPODSET3.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURDARKCREEP.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourDarkCreep" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="-0.1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.02" />
        <Property name="y" value="-0.02" />
        <Property name="z" value="0.03" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="4" />
        <Property name="z" value="2" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.7" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURDARKRIBBED.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourDarkRibbed" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourSecond.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURLIGHTCREEP.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourLightCreep" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="-0.1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.02" />
        <Property name="y" value="-0.02" />
        <Property name="z" value="0.03" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="4" />
        <Property name="z" value="2" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.7" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURORBMAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourOrbMAT" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourSecond.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOURTOWER\DUDCONTOURRIBBEDCREEP.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="contourRibbedCreep" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Contour/ContourMaster/Materials/MAT_ContourCreep.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="-0.1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="0.01" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.02" />
        <Property name="y" value="-0.02" />
        <Property name="z" value="0.03" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="4" />
        <Property name="z" value="2" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.7" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\FRACTALCUBE\SHAPE1FLOAT\DUDPULSEFLARE_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="PulseFlare_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/FractalCube/Shape1/Materials/PulseFlare_mat.metamaterial.mXml" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F23_TRANSLUCENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1.5" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/FRACTALCUBE/DUDPULSEFLARE.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\GEOMETRIC\DUDLIGHTMATERIAL_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="LightMaterial_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/MedGeometric/Materials/LightMaterial_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.6" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0.7" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\GEOMETRIC\DUDSMALLVINES_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="SmallVines_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/HugeObject/Materials/SmallVines_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\HUGEOBJECT\DUDSMALLVINES_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="SmallVines_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/HugeObject/Materials/SmallVines_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\HUGEOBJECT\DUDVINES_MAT12.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Vines_mat12" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/HugeObject/Materials/Vines_mat12.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0.1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.3" />
        <Property name="y" value="0.3" />
        <Property name="z" value="0.3" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.3" />
        <Property name="y" value="0.3" />
        <Property name="z" value="0.3" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="2" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\MEDGEOMETRIC\DUDLIGHTMATERIAL_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="LightMaterial_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Hexagon/MedGeometric/Materials/LightMaterial_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.6" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0.7" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\FLOATJOINT\DUDFLOAT_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Float_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/FloatJoint/Materials/Float_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="3" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="3" />
        <Property name="y" value="1" />
        <Property name="z" value="3" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0.3" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTURE\DUDMSTRUCTURE_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="MStructure_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/MStructure/Materials/MStructure_mat.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SINGLEJOINT\DUDMSTRUCTURE_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="MStructure_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/MStructure/Materials/MStructure_mat.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SMALLJOINT\DUDMSTRUCTURE_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="MStructure_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/MStructures/MStructure/Materials/MStructure_mat.metamaterial.mXml" />
  <Property name="Class" value="Opaque" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F21_VERTEXCOLOUR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
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
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARD\DUDSHARD_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Shard_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/Shard/Materials/Shard_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F35_GLOW_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F39_METALLIC_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.5" />
        <Property name="z" value="1" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.03" />
        <Property name="y" value="0.09" />
        <Property name="z" value="0.07" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.3" />
        <Property name="z" value="0.1" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0.35" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARDALT\DUDSHARD_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Shard_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/Shard/Materials/Shard_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F35_GLOW_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F39_METALLIC_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.5" />
        <Property name="z" value="1" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.03" />
        <Property name="y" value="0.09" />
        <Property name="z" value="0.07" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.3" />
        <Property name="z" value="0.1" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0.35" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SINGLESHARD\DUDSHARD_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Shard_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/FloorPieces/Materials/Shard2_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F35_GLOW_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F39_METALLIC_MASK" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.5" />
        <Property name="z" value="1" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\WEIRD\SHARDS\TALLSHARD\DUDSHARD_MAT.MATERIAL.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="Shard_mat" />
  <Property name="Metamaterial" value="Models/Planets/Biomes/Weird/Shards/Shard/Materials/Shard_mat.metamaterial.mXml" />
  <Property name="Class" value="Glow" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F35_GLOW_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F39_METALLIC_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.5" />
        <Property name="z" value="1" />
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
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0.04" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneAmplitudeAndPosOffsetV4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.03" />
        <Property name="y" value="0.09" />
        <Property name="z" value="0.07" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveOneFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="1.5" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoAmplitudeVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.1" />
        <Property name="y" value="0.3" />
        <Property name="z" value="0.1" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFrequencyVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gWaveTwoFallOffAndSpeedVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0.35" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/DUDSHARDSCROLL.SHARD.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\BEAMSTONE\DUDBEAMGRADIENT.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Crystal" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMGRADIENT.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\BEAMSTONE\DUDBEAMPARTICLES.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Crystal" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDBEAMPARTICLES.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\BEAMSTONE\DUDSCROLLINGCLOUD.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Crystal" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/BEAMSTONE/DUDSCROLLINGCLOUD.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\CONTOUR\DUDCONTOURPOD.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Trader" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPOD.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\CONTOUR\DUDCONTOURPODCREEP.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Trader" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODCREEP.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODCREEP.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODCREEP.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\CONTOUR\DUDCONTOURPODSET2.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Trader" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET2.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\CONTOUR\DUDCONTOURPODSET3.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Trader" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODSET3.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\CONTOUR\DUDCONTOURPODTILE.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Trader" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/CONTOUR/DUDCONTOURPODTILE.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\FRACTALCUBE\DUDPULSEFLARE.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Crystal" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/FRACTALCUBE/DUDPULSEFLARE.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\HEXAGON\DUDSCROLLINGENERGY.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Plant" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSCROLLINGENERGY.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\HEXAGON\DUDSMALLVINES.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Plant" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/HEXAGON/DUDSMALLVINES.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\MSTRUCTURES\DUDFLOATJOINT.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Warrior" />
            <Property name="ColourAlt" value="Primary" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDFLOATJOINT.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\MSTRUCTURES\DUDJOINT.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="WarriorAlt" />
            <Property name="ColourAlt" value="Primary" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/MSTRUCTURES/DUDJOINT.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\WEIRD\SHARDS\DUDSHARDSCROLL.TEXTURE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="SHARD" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Scientific" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/SHARDSCROLL.SHARD.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/SHARDSCROLL.SHARD.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/WEIRD/SHARDS/SHARDSCROLL.SHARD.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
    },
}