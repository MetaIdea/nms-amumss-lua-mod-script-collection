
--This mod decreases the number of fireflies rendered
--whilst also reducing the scale range and increasing
--the distance between particles to appear less dense.
--It also scales up the gas/smoke in other biomes that
--support gas/smoke materials.

--Modifies the following MBINS:
--MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\BUBBLE\BUBBLE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\CAVE\CAVE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\CAVE\CAVE2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\EARTH\NIGHTTIME.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORMDOT.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORMGAS.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\SCORCHEDGASOLD.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\SPARK.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\STORMFLAME.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\STORMSMOKE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP02.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\NIGHTTIME.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMEMBER.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMGAS.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMSPIKE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMSPIKEL.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\SPARK.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\STORMFLAME.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\JUNGLE\JUNGLE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\MARS\SANDCAVE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\SANDCAVE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEASH1.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEFOG.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEGAS.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHDOT.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGAS.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGASOLD.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHFLAME.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SCORCHED\SPARK.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SNOW\SNOW2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICGAS.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICSPORE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\UNDERWATER\BUBBLE1.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\WATER\WATER.HEAVYAIR.MBIN

--Modifies the following Scene Files:
--MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\SNOW\SNOWAIR.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORM.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORM.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVE.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHED.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP.SCENE.MBIN
--MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXIC.SCENE.MBIN

--You'll notice that DIVIDER and GASSMOK peform the same math
--operations, but wanted these to be independent from each
--other. This gives you control over the number of particles
--for each of the systems being manipulated.

--DIVIDER is affecting the particles for the fire flies
--GASSMOK is affecting the paritcles for the other particle
--		  types: Gas, Smoke, Sparks, Embers, Flames etc
 
--Increase DIVIDER value to reduce the rendered particles.
--whole values (2) will halve the number of particles and
--fractionals (0.5) will double the number of particles.

DIVIDER = 4    --Modifies the number of firefly particles.
SPEED_V = 10   --Modifies the visible speed of particles.
MULTPLY = 1.5  --Modifies the particles radius / radiusY.
FADES_M = 0.5  --Modifies fade speed of rendered particles.
SCALE_M = 0.5  --Modifies the x,y,z particles scale ranges.
SCALE_S = 1.8  --Modifies smoke/gas scale in certain biomes.
GASSMOK = 0.5  --Modifies heavyair gas/smoke particle count.

local function round(number, precision)
   local fmtStr = string.format('%%0.%sf',precision)
   number = string.format(fmtStr,number)
   return number
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_BiomesFireFliesReduced.pak",
["LUA_AUTHOR"]      = "Silent",
["MOD_AUTHOR"]      = "Silent369",
["NMS_VERSION"]     = "3.7+",
["MOD_DESCRIPTION"] = "Resized / Reduced(optional) 'heavyair' firefly particles in all biomes. Gas / Smoke Scaled up on other biomes.",
["MODIFICATIONS"]   = 
	{
        {
            ["MBIN_CHANGE_TABLE"] = 
			{
                {
                    ["MBIN_FILE_SOURCE"] = 
					{
						"MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\BUBBLE\BUBBLE.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\CAVE\CAVE.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\CAVE\CAVE2.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH2.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\EARTH\NIGHTTIME.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORMDOT.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP02.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\NIGHTTIME.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\JUNGLE\JUNGLE.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\MARS\SANDCAVE.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\SANDCAVE.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEASH1.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEFOG.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEGAS.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHDOT.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\UNDERWATER\BUBBLE1.HEAVYAIR.MBIN",
						"MODELS\EFFECTS\HEAVYAIR\WATER\WATER.HEAVYAIR.MBIN"
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						--===============================================================================
						--NUMBER OF PARTICLES (OPTIONAL)
						--===============================================================================
                        {
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(DIVIDER,5)},
							}
                        },
						--===============================================================================
						--MAX VISIBLE PARTICLE SPEED
						--===============================================================================
                        {
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"MaxVisibleSpeed",	  round(SPEED_V,0)},
							}
                        },
						--===============================================================================
						--PARTICLES RADIUS / FADE TIME
						--===============================================================================
                        {
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Radius",			round(MULTPLY,5)},
								{"RadiusY",			round(MULTPLY,5)},
								
							}
                        },
                        {
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FadeTime",		round(FADES_M,2)},
                            }
                        },
						--===============================================================================
						--PARTICLES SCALE RANGES
						--===============================================================================
                        {
							["PRECEDING_KEY_WORDS"]	= {"ScaleRange",},
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",				round(SCALE_M,2)},
								{"y",				round(SCALE_M,2)},
								{"z",				round(SCALE_M,2)},
							}
                        },
                        {
							["PRECEDING_KEY_WORDS"]	= {"RotationSpeedRange",},
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",				round(SCALE_M,2)},
							}
                        }
                    }
                },
						--===============================================================================
						--ALPINE SCENE SCALES (SMOKE)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--SNOW SCENE SCALES (SNOWAIR SMOKE)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SNOW\SNOWAIR.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/SNOW/SNOW2.HEAVYAIR.MXML",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SNOW\SNOW2.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/NEWSMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--FIRESTORM SCENE SCALES (FIRESTORM GAS)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORM.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/FIRESTORM/FIRESTORMGAS.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORMGAS.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/NEWSMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\SCORCHEDGASOLD.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\SPARK.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SCORCHSPARK.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\STORMFLAME.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/EMBERS/EMBERSMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\FIRESTORM\STORMSMOKE.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/FIRESTORM/STORMSMOKEMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--GRAVITYSTORM SCENE SCALES (GRAVITY STORM GAS)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORM.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/GRAVITYSTORM/GRAVITYSTORMGAS.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMEMBER.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/GRAVITYSPIKES/GRAVITYEMBERMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMGAS.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/NEWSMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMSPIKE.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/GRAVITYSPIKES/GRAVITYSPIKEMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMSPIKEL.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/GRAVITYSPIKES/GRAVITYSPIKELMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\SPARK.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SCORCHSPARK.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\STORMFLAME.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/EMBERS/EMBERSMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--MOUNTAIN SCENE SCALES (MOUNTAIN SMOKE / SPARK)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "Models\Effects\HeavyAir\Mountain\Mountain.heavyair.mbin",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN2.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SPARK.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--RADIOACTIVE SCENE SCALES (RADIOACTIVE GAS)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVE.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/RADIOACTIVE/RADIOACTIVEGAS.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
						--===============================================================================
						--SCORCHED SCENE SCALES (SCORCHED GAS)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHED.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/SCORCHED/SCORCHEDGAS.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGAS.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/NEWSMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGASOLD.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHFLAME.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/HEAVYAIR/SMALLFLAME/SMALLFLAMEMAT.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SCORCHED\SPARK.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SCORCHSPARK.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--SWAMP SCENE SCALES (SMOKE)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/SWAMP/SWAMP.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/RAINDROP.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
						--===============================================================================
						--TOXIC SCENE SCALES (TOXIC GAS SMOKE)
						--===============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXIC.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Value", "MODELS/EFFECTS/HEAVYAIR/TOXIC/TOXICGAS.HEAVYAIR.MBIN",},
							["SECTION_UP_SPECIAL"] 	= 2,
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 			SCALE_S},
                                {"ScaleY",	  		SCALE_S},
								{"ScaleZ",	  		SCALE_S},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICGAS.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/NEWSMOKE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/RAINDROP.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/RAINDROP2.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICSPORE.HEAVYAIR.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"Material", "MODELS/EFFECTS/COMMON/MATERIALS/TOXICSPORE.MATERIAL.MBIN",},
							["MATH_OPERATION"]		= "/",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfParticles", round(GASSMOK,5)},
							}
                        },
                    }
                }
            }
        },
    }
}