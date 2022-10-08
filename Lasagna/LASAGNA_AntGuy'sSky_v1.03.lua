--There are 11 sections in this script:

--0. Global variables		  			 	   - i.e. easy to adjust numbers
--1. Regular biomes		       -	(BIOMES 1) - i.e. low/dead biomes
--2. High density biomes	   -	(BIOMES 2) - i.e. mid/full biomes
--3. Huge biomes 			   -	(BIOMES 3) - i.e. big/huge biomes
--4. Lush HQ biome	 		   -	(BIOMES 4) - i.e. lush hq (to improve performance)
--5. Barren HQ biome 		   -	(BIOMES 5)
--6. Lava/rocks				   -	(BIOMES 6) - i.e. to fix valcanoes/rocks everywhere
--7. Underwater biomes		   -	(BIOMES 7) - i.e. half density so there's open areas
--8. Just crystals 			   -	(BIOMES 8) - i.e. "E3" crystals
--9. Global misc terrain/LOD/fade time stuff   - only section that affects global .mbins
--10. Patchscale/regionscale density 		   - i.e. balance forests vs. empty areas
--11. Fast start								   - i.e. remove intro logo

--Biome subsections:
--a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc
--b. Coverage/Density/Etc
--c. Lod distances/Ultra invisible bug fix (code originally by InsaneRuffles)

--InsaneRuffles code = "----IR:"

--------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = 0. GLOBAL VARIABLES = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------

--Multiplier only if "multiplier" in the name, otherwise replaces:

DestroyedByPlayerShip = "True"

ScaleHugeMultiplier = 80			--All scale = balanced by patchedgescaling:
ScaleExtraLargeMultiplier = 60
ScaleLargeMultiplier = 40
ScaleSmallMultiplier = 20
ScaleSmMultiplier = 6
ScaleSmallestMultiplier = 2.1

DensityLowMultiplier = 0.95	  		--Caution: raising this will break some planets
DensityLowestMultiplier = 0.9

DensityDistantObjectsMultiplier = 0.7
DensityLandmarksMultiplier = 0.55
DensityObjectsMultiplier = 0.55
DensityDetailObjectsMultiplier = 0.85

DensityHugeDistantObjectsMultiplier = 0.1
DensityHugeLandmarksMultiplier = 0.1
DensityHugeObjectsMultiplier = 0.3
DensityHugeDetailObjectsMultiplier = 0.85

DensityFullDistantObjectsMultiplier = 0.35
DensityFullLandmarksMultiplier = 0.225
DensityFullObjectsMultiplier = 0.35

DensityLavaMultiplier = 0.7
DensityUnderwaterMultiplier = 0.5

PatchEdgeScalingLarge = 0.74		--Changing these will heavily impact flora/object sizes
PatchEdgeScalingMedium = 0.73
PatchEdgeScalingSmall = 0.68	

MaxAngleGrass = 90
MaxAngleLarge = 80 			--i.e. grass, cactus, rocks
MaxAngleSmall = 60 			--i.e. trees, largest objects

LargeObjectCoverageGrassAlwaysPlace = "AlwaysPlace"

-------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section below, modified by Lasagna (--*** = lasagna comments)----------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--METADATA\SIMULATION\SOLARSYSTEM\BIOMES\*
RadiusMultiplier = 3			--objects draw distance multiplier (limited by engine's hard-limit)
GrassRadiusMultiplier = 1.5	--GRASS draw distance multiplier
LodDistanceMultiplierDistantObjects = 3 	--***i.e. big rings/huge objects
LodDistanceMultiplierLandmarks = 3 			--***i.e. trees/biome plants (unchanged rn)
LodDistanceMultiplierLow = 1.5 				--***i.e. high detailobjects biomes, like toxic
LodDistanceMultiplierLowest = 1.1 			--***i.e. HQ biomes that already have high LODD
LodDistanceMultiplierHQUltraForest = 0.1    --***just hq forest
Coverage_Multiplier = 1			--object placement coverage multiplier (object density) --***needed to work
CoverageUnderwaterMultiplier = 0.6			--***just underwater

--GCGRAPHICSGLOBALS.GLOBAL
ForceUncachedTerrain = "True"	--fix slow terrain textures loading (default = false)
ShadowLengthMultiplier = 3	--shadows draw distance multiplier --***needed to work

--GCENVIRONMENTGLOBALS.GLOBAL
LODAdjustMultiplier = 2		--inconsistent results
RegionLODRadiusAdd = 3			--increases draw distance hard-limit, value above '3' caused crash
PlanetLODMultiplier = 3		--planet lod distance multiplier

-------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section above, modified by Lasagna ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_AntGuy'sSky_v1.03.pak",
["MOD_AUTHOR"]				= "Lasagna - with InsaneRuffles code",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
-----------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = =  = = = 1. REGULAR BIOMES (BIOMES 1) = = = = = = = = = = = = = = = = = = = = = =
-----------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\ULTRAEXTERNALOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\BEACH\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILD1.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILD2.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILD3.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILDFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\BARREN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\BARRENWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\DEADPLANETS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZEN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZENWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULLSAFE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\LUSH.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\LUSHWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\RADIOACTIVE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\RADIOACTIVEWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SCORCHED.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SCORCHEDWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SPOREVENTPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TENTACLEPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXIC.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXICWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\WEIRDWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------- a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc -----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleExtraLargeMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleLargeMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------- b. Coverage/Density/Etc --------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDistantObjectsMultiplier},
								{"SlopeDensity",			DensityDistantObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityLandmarksMultiplier},
								{"SlopeDensity",			DensityLandmarksMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityObjectsMultiplier},
								{"SlopeDensity",			DensityObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDetailObjectsMultiplier},
								{"SlopeDensity",			DensityDetailObjectsMultiplier},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------- c. Lod distances/Ultra invisible bug fix (code originally by InsaneRuffles *** = lasagna comments) -----------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects","LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks","LodDistances"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.9}, --***Fixes invisible grass bug
								{"SlopeDensity",			0.9}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.7}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.7}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
				{
---------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = =  = = = 2. HIGH DENSITY BIOMES (BIOMES 2) = = = = = = = = = = = = = = = = = = = = = =
---------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------- a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc -----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleExtraLargeMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleLargeMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------- b. Coverage/Density/Etc --------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityFullDistantObjectsMultiplier},
								{"SlopeDensity",			DensityFullDistantObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityFullLandmarksMultiplier},
								{"SlopeDensity",			DensityFullLandmarksMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityFullObjectsMultiplier},
								{"SlopeDensity",			DensityFullObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDetailObjectsMultiplier},
								{"SlopeDensity",			DensityDetailObjectsMultiplier},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------- c. Lod distances/Ultra invisible bug fix (code originally by InsaneRuffles *** = lasagna comments) -----------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects","LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks","LodDistances"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.9}, --***Fixes invisible grass bug
								{"SlopeDensity",			0.9}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.7}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.7}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = 3. HUGE BIOMES (BIOMES 3) = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUVWPLANTBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL.MBIN",--
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS.MBIN", --giant rocks everywhere = bad
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------- a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc -------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleHugeMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleHugeMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------- b. Coverage/Density/Etc --------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityHugeDistantObjectsMultiplier},
								{"SlopeDensity",			DensityHugeDistantObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityHugeLandmarksMultiplier},
								{"SlopeDensity",			DensityHugeLandmarksMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityHugeObjectsMultiplier},
								{"SlopeDensity",			DensityHugeObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityHugeDetailObjectsMultiplier},
								{"SlopeDensity",			DensityHugeDetailObjectsMultiplier},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------- c. Lod distances/Ultra invisible bug fix (code originally by InsaneRuffles *** = lasagna comments) -----------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects","LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks","LodDistances"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.9}, --***Fixes invisible grass bug
								{"SlopeDensity",			0.9}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.7}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.7}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = 4. LUSH HQ BIOME (BIOMES 4) = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------- a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc -------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleExtraLargeMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleLargeMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/Etc --------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDistantObjectsMultiplier},
								{"SlopeDensity",			DensityDistantObjectsMultiplier},
								-- {"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								-- {"MaxImposterRadius",		RadiusMultiplier},
								-- {"FadeOutStartDistance",	    RadiusMultiplier},
								-- {"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityLandmarksMultiplier},
								{"SlopeDensity",			DensityLandmarksMultiplier},
								-- {"MaxRegionRadius",			RadiusMultiplierLow},
								-- {"MaxImposterRadius",		RadiusMultiplierLow},
								-- {"FadeOutStartDistance",	    RadiusMultiplierLow},
								-- {"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityObjectsMultiplier},
								{"SlopeDensity",			DensityObjectsMultiplier},
								-- {"MaxRegionRadius",			RadiusMultiplierLow},
								-- {"MaxImposterRadius",		RadiusMultiplierLow},
								-- {"FadeOutStartDistance",	    RadiusMultiplierLow},
								-- {"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDetailObjectsMultiplier},
								{"SlopeDensity",			DensityDetailObjectsMultiplier},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- c. Lod distances/Ultra invisible bug fix (code originally by InsaneRuffles *** = lasagna comments): ----------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.9}, --***Fixes invisible grass bug
								{"SlopeDensity",			0.9}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.7}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.7}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = 5. BARREN HQ BIOME (BIOMES 5) = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/Etc -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleExtraLargeMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleLargeMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] = {"Placement","SPARSECLUMP","MinScale","1.6",}, --fix giant rocks everywhere
							["VALUE_MATCH"] 		= "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] = {"Placement","BLANKETCLUMP","MinScale","1.4",}, --fix giant rocks everywhere
							["VALUE_MATCH"] 		= "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/Etc ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDistantObjectsMultiplier},
								{"SlopeDensity",			DensityDistantObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityLandmarksMultiplier},
								{"SlopeDensity",			DensityLandmarksMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityObjectsMultiplier},
								{"SlopeDensity",			DensityObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDetailObjectsMultiplier},
								{"SlopeDensity",			DensityDetailObjectsMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects","LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks","LodDistances"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SlopeDensity",			DensityLowestMultiplier}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			DensityLowestMultiplier}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = 6. LAVA/ROCKS (BIOMES 6) = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVABIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKGRASS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKSCRUB.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RAREROCKS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BARRENFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\LOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\MID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS.MBIN", 		--Huge disappearing swirl objects
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/Etc -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/Etc ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityLavaMultiplier},
								{"SlopeDensity",			DensityLavaMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityLavaMultiplier},
								{"SlopeDensity",			DensityLavaMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityObjectsMultiplier},
								{"SlopeDensity",			DensityObjectsMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"FlatDensity", 			DensityDetailObjectsMultiplier},
								{"SlopeDensity",			DensityDetailObjectsMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects","LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks","LodDistances"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.8}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.8}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
-------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = 7. UNDERWATER BIOME (BIOMES 7) = = = = = = = = = = = = = = = = = = = = = = = = = =
-------------------------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMID.MBIN",--
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCRYSTALS.MBIN",			--creates giant crystals, obstructing all water
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCUCUMBERLIGHTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCURVECORAL.MBIN",			----creates giant coral, obstructing all water
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERGASBAGS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMONOLITHS.MBIN",			--creates plants/shore rocks that stick out of water
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERPLANT.MBIN",				--creates giant weeds, obstructing all water
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/Etc -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["MATH_OPERATION"] 		= "*",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmMultiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/Etc ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				CoverageUnderwaterMultiplier},
								{"FlatDensity", 			DensityUnderwaterMultiplier},
								{"SlopeDensity",			DensityUnderwaterMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				DensityLowMultiplier}, --***Fixes shadow flickering
								{"SlopeDensity",			DensityLowMultiplier}, --***Fixes shadow flickering
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",				0.8}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.8}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
					},
				},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------Code by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment)----------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	=
--------------------------------------------------------------------------------------------------------------------
					-- = = = = = = = = = = 8. JUST CRYSTALS (BIOMES 8) = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\BARREN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\DEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FROZEN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\LUSH.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\RADIOACTIVE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\SCORCHED.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\TOXIC.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------- a. DESTROYEDBYSHIP/SCALE/ROTATION/COLLISION CHANGES -------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",	ScaleLargeMultiplier}, --from ~1
								{"MaxScaleY",	"3"}, --from 1
								{"MaxAngle",	"180"}, --from ~40
								{"PatchEdgeScaling",	"0.75"}, --from 0
								{"MaxXZRotation",	"5"},
								{"CollideWithPlayer",	"True"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				Coverage_Multiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	LodDistanceMultiplierLandmarks}
							}
						},
					}
				},
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
				
--------------------------------------------------------------------------------------------
--= = = = = = = = = = = = 9. GLOBAL MISC TERRAIN/LOD/FADE TIME STUFF = = = = = = = = = = = =
--------------------------------------------------------------------------------------------
--This includes: uncached terrain, shadows, lod adjust, region, planet LOD, and fade time changes
				
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCGRAPHICSGLOBALS.GLOBAL.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ForceUncachedTerrain",	ForceUncachedTerrain},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",   
							["MATH_OPERATION"] 		= "*",    
							["REPLACE_TYPE"] 		= "ALL",    
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShadowLength",			ShadowLengthMultiplier},
								{"ShadowLengthShip",		ShadowLengthMultiplier},
								{"ShadowLengthSpace",		ShadowLengthMultiplier},
								{"ShadowLengthStation",		ShadowLengthMultiplier},
								{"ShadowLengthCameraView",	ShadowLengthMultiplier},
							}
						},
					} 
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"		
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",   
							["MATH_OPERATION"] 		= "*",    
							["REPLACE_TYPE"] 		= "ALL",    
							["LINE_OFFSET"] 		= "+1",    
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LODAdjust",	LODAdjustMultiplier} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LODAdjust",	LODAdjustMultiplier}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LODAdjust",	LODAdjustMultiplier}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LODAdjust",	LODAdjustMultiplier}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LODAdjust",	LODAdjustMultiplier}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",   
							["MATH_OPERATION"] 		= "+",    
							["REPLACE_TYPE"] 		= "ALL",    
							["LINE_OFFSET"] 		= "+1",    
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RegionLODRadius",	0}		--distance radius of finest details, increase causes flickering on some planets
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "+",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RegionLODRadius",	RegionLODRadiusAdd}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "+",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RegionLODRadius",	RegionLODRadiusAdd}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "+",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RegionLODRadius",	RegionLODRadiusAdd}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "+",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RegionLODRadius",	RegionLODRadiusAdd}
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "+",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+6",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RegionLODRadius",	RegionLODRadiusAdd}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",   
							["MATH_OPERATION"] 		= "*",    
							["REPLACE_TYPE"] 		= "ALL",    
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlanetObjectSwitch",			PlanetLODMultiplier},
								{"PlanetLodSwitch0",			PlanetLODMultiplier},
								{"PlanetLodSwitch0Elevation",	PlanetLODMultiplier},
								{"PlanetLodSwitch1",			PlanetLODMultiplier},
								{"PlanetLodSwitch2",			PlanetLODMultiplier},
								{"PlanetLodSwitch3",			PlanetLODMultiplier}
								--{"PlanetFlipDistance",		PlanetLODMultiplier},
								--{"PlanetEffectEndDistance",	PlanetLODMultiplier}
							}
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------Code by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment)-----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 		= "ALL",  
							["VALUE_CHANGE_TABLE"]	=
							{
								{"TerrainFadeTime",						  "0.7"},
								{"TerrainFadeTimeInShip",				  "0.9"},
								--{"CreatureFadeTime",					  "0.9"}, --caused hitching
								{"FloraFadeTime",						  "0.5"}, --less causes hitching
								{"FloraFadeTimeMax",				      "0.9"}, --less causes hitching
							}
						},
					} 
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
----------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = 10. PATCH SCALE/REGION SCALE/SPAWN DENSITY CHANGES = = = = = = = = = = = = = =
----------------------------------------------------------------------------------------------------------
		--Modifies placement/regions on a planet, i.e. high density areas & expansive open areas
						
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FOREST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"128"}, 	-- Original "64"
								{"RegionScale",				"18"}		-- Original "6"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIOMEPLANT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1100"}, 	-- Original "550"
								{"RegionScale",				"0.4"}		-- "0.2"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"300"}, 	-- Original "100"
								{"RegionScale",				"1.5"}		-- Original "0.75"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1180"}, 	-- Original "590"
								{"RegionScale",				"0.2"}		-- Original "0.1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1220"}, 	-- Original "610"
								{"RegionScale",				"0.2"}		-- Original "0.1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1300"}, 	-- Original "650"
								{"RegionScale",				"0.2"}		-- Original "0.1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","UNDERGROUND",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"300"}, 	-- Original "150"
								{"RegionScale",				"2"}		-- Original "1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SPARSECLUMP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"60"}, 	-- Original "30"
								{"RegionScale",				"10"}		-- Original "5"
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","BARRENROCKCLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				"25"}, 	-- Original "25"
								-- {"RegionScale",				"16"}		-- Original "8"
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FLORACLUMP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"10"}, 	-- Original "5"
								{"RegionScale",				"5"}		-- Original "5"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","STORMCRYST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"440"}, 	-- Original "220"
								{"RegionScale",				"2"}		-- Original "1"
							}
						},

						{
							["SPECIAL_KEY_WORDS"] = {"Name","WILDPLANTS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"240"}, 	-- Original "120"
								{"RegionScale",				"1.2"}		-- Original "0.6"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GRASS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"100"}, 	-- Original "100"
								{"RegionScale",				"5"}		-- Original "5"
							}
						},
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
----------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = 11. FAST START CHANGES = = = = = = = = = = = = = = = = = = = = = =
----------------------------------------------------------------------------------------------------------
						--makes boot load time faster, doesn't remove mod warning
						
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\UI\BOOTLOGOPC.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/HGLOGOBLACKBGSMALL.DDS",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "DisplayTime",
                            ["REPLACE_TYPE"]  = "ALL",
                            ["MATH_OPERATION"]  = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE","0"},
                            }
                        },
                    }
                }
            }
        },
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE