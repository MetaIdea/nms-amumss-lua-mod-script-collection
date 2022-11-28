--[[

There are 14 sections in this script:

*Biomes A - can place Landmarks into DistantObjects (for increased lod/draw distance)
*Biomes B - can't (mostly misc. "objects" MBINs)

0. Global variables		  			 	  		- i.e. quick adjustments
1. Functions									- i.e. just for biomes 1 & 2
2. Large lush [changes]       -	(BIOMES 1)		- i.e. lush mid/full, for large scale forests
3. Huge & medium/low density  -	(BIOMES 2&3 A/B)- i.e. bigprop/hugeprops, most radio/scorched/toxic & misc. props/plants
4. Other huge		 	      -	(BIOMES 4 A/B)	- i.e. barren/toxic/weird biomes, for unique scaling
5. Other huge 2				  - (BIOMES 5 A/B)  - i.e. " ", lower coverage/density
6. Low HQ density 		      -	(BIOMES 6)  	- i.e. just lush hq, for optimized performance
7. Highest density 		      -	(BIOMES 7)  	- i.e. med/low/dead lush/frozen
8. Medium density 		      -	(BIOMES 8)  	- i.e. weird/exotic
9. Buggy biomes 		      -	(BIOMES 9)		- i.e. full toxic/radio (to fix crashes with multi-biome mod)
10. Low density lava/tentacle -	(BIOMES 10) 	- i.e. lava valcanoes (to fix valcanoes/tentacles everywhere)
11. Just crystals 		      -	(BIOMES 11)		- i.e. "E3" crystals
12. Patchscale/regionscale density 		  		- i.e. balance forests vs. empty areas
13. Fast start									- i.e. remove intro logo
14. Remove rocks/hazard plants				 	- i.e. remove small rocks & exploding plants

Biomes 1-3 subsections: (old method = giant biomes, less scale variation, longer time)
a. Scale changes
b. Coverage/Density changes
c. Destroyed by ship/Max angle/Etc
d. Region/Imposter/Fade out
e. Lod distances/Ultra invisible bug fix
f. Placement/Placement priority
g. [just "b" biomes] Change landmarks to DistantObjects

Biomes 4-11 subsections: (new method = generally smaller biomes, more scale variation, shorter time)
a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc
b. Coverage/Density/Etc
c. Lod distances/Ultra invisible bug fix
d. Placement/Placement priority
e. [just "b" biomes] Change landmarks to DistantObjects

Just Biomes 11 - Crystals: d. Change objects to landmarks

InsaneRuffles code = "----IR:"

]]
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 0. GLOBAL VARIABLES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--local DestroyedByPlayerShip = "False"

--Only in biomes 1-3:
local ScaleHugeMultiplier = 5
local ScaleLargeMultiplier = 3 		--misc. outlier values
local ScaleMediumMultiplier = 2 	--grass, bushes, etc. (2.2 so tall grass doesn't hit eyes on uphill climb)
local ScaleSmallestMultiplier = 1.5

--Only in biomes 4-10:
local ScaleHuge = 42					--All scale replacement = balanced by patchedgescaling:
local ScaleExtraLarge = 23
local ScaleLarge = 11
local ScaleMedium = 8
local ScaleSmall = 6
local ScaleSmallest = 2

local PatchEdgeScalingLarge = 0.74	--Changing these will heavily impact flora/object sizes
local PatchEdgeScalingMedium = 0.73
local PatchEdgeScalingSmall = 0.69				

--In all:
local DensityHighestMultiplier = 0.86
local DensityMedHighMultiplier = 0.69
local DensityMediumMultiplier = 0.66 --Caution: raising this over 1 will break some planets
local DensityMedLowMultiplier = 0.63
local DensityLowestMultiplier = 0.55

--local DensitySHADOWLowMultiplier = 0.95 --Caution: raising this will break some planets
local DensityDETAILLowestMultiplier = 0.85 --Caution: raising this will break some planets
local DensityGRASSLowestMultiplier = 0.4

local DensityPointSevenMultiplier = 0.7 --Caution: raising this will break some planets
local DensityPointEightMultiplier = 0.8 --Caution: raising this will break some planets

local MaxAngleLarge = 80 			--i.e. cactus, rocks
local MaxAngleSmall = 60 			--i.e. trees, largest objects
local MaxAngleDetailObjects = 90
local MaxAngleGrass = 180

local LargeObjectCoverageGrassAlwaysPlace = "AlwaysPlace"

local PatchsizeRegionScaleMultiplier = 1 --unchanged
local PatchsizeRegionScaleMultiplierJustForest = 1.1

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section below, modified by Lasagna (--*** = lasagna comments)----------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--METADATA\SIMULATION\SOLARSYSTEM\BIOMES\*
local RadiusMultiplier = 3			--objects draw distance multiplier (limited by engine's hard-limit)
local RadiusMultiplierLow = 2 					--***float = errors
local GrassRadiusMultiplier = 3		--GRASS draw distance multiplier
local LodDistanceMultiplierDistantObjects = 1.5 	--***i.e. big rings/huge objects
local LodDistanceMultiplierLandmarks = 1.5 			--***i.e. trees/biome plants (unchanged rn)
local LodDistanceMultiplierLow = 1.25 				--***i.e. high detailobjects biomes, like toxic
local LodDistanceMultiplierLowest = 1.1 			--***i.e. HQ biomes that already have high LODD
local LodDistanceMultiplierHQUltraForest = 0.1    --***just hq forest
local CoverageMultiplier = 1			--object placement coverage multiplier (object density) --***needed to work

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section above, modified by Lasagna -------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = 1. FUNCTIONS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


local function BiomesOneTwoThreeModifier(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityMedLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
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
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
								-- {"SlopeDensity",			DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE LANDMARKS TO DISTANTOBJECTS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						--If DistanceObjects section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							}	
						},
						
					--THEN DO:
					
						--If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    </Property>]], [[]] },
							-- }	
						-- },
					
					--THEN DO:
					
						--If Landmarks section is open, remove it so DistanceObjects takes over that section
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Landmarks">]], [[]] },
							}	
						},
						
						--Not possible: DistanceObjects == closed && Landmarks == closed
						--Not possible: DistanceObjects == open && Landmarks == closed
						
						--Add closed Landmarks line after DistantObjects, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Landmarks" />]]
						},
	}
return biomeModifier
end



local function BiomesOneTwoThreeModifierDISTANTOBJECTS(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityMedLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
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
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
								-- {"SlopeDensity",			DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-- -------------------------------------------------------------------------------------------------------------------------------------------------
-- -- g. CHANGE LANDMARKS TO DISTANTOBJECTS <-Causes error in these biomes
-- -------------------------------------------------------------------------------------------------------------------------------------------------
						
						-- --If DistanceObjects section is closed, replace it to make it open
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							-- }	
						-- },
						
					-- --THEN DO:
					
						-- --If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- -- {
							-- -- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- -- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- -- ["REPLACE_TYPE"] 		= "RAW",
							-- -- ["VALUE_CHANGE_TABLE"] 	= 
							-- -- {
								-- -- { [[    </Property>]], [[]] },
							-- -- }	
						-- -- },
					
					-- --THEN DO:
					
						-- --If Landmarks section is open, remove it so DistanceObjects takes over that section
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks">]], [[]] },
							-- }	
						-- },
						
						-- --Not possible: DistanceObjects == closed && Landmarks == closed
						-- --Not possible: DistanceObjects == open && Landmarks == closed
						
						-- --Add closed Landmarks line after DistantObjects, otherwise error:
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["ADD"] 	= [[    <Property name="Landmarks" />]]
						-- },
	}
return biomeModifier
end

-------------------------------------------------------------------------------------------------------------------------------------------------


local function BiomeFourFiveSevenEightModifier(Param1, Param2, Param3, Param4, Param5, Param6, Param7)
	local biomeModifier =
	{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param1},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param2}, --for big/huge biomes
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
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
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
								{"Coverage",	Param4},
								{"FlatDensity", Param5},
								{"SlopeDensity",	Param5},
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
								{"Coverage",	Param4},
								{"FlatDensity", Param3},
								{"SlopeDensity",	Param5},
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
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.2},
								--{"SlopeDensity",	DensityMediumMultiplier},
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
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
								-- {"SlopeDensity",			DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    Param6}, --***Fixes invisible grass bug
								{"SlopeDensity",			Param6}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"FlatDensity",				Param7}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			Param7}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE LANDMARKS TO DISTANTOBJECTS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						--If DistanceObjects section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							}	
						},
						
					--THEN DO:
					
						--If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    </Property>]], [[]] },
							-- }	
						-- },
					
					--THEN DO:
					
						--If Landmarks section is open, remove it so DistanceObjects takes over that section
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Landmarks">]], [[]] },
							}	
						},
						
						--Not possible: DistanceObjects == closed && Landmarks == closed
						--Not possible: DistanceObjects == open && Landmarks == closed
						
						--Add closed Landmarks line after DistantObjects, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Landmarks" />]]
						},
	}
return biomeModifier
end



local function BiomeFourFiveSevenEightModifierDISTANTOBJECTS(Param1, Param2, Param3, Param4, Param5, Param6, Param7)
	local biomeModifier =
	{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param1},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param2}, --for big/huge biomes
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
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
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
								{"Coverage",	Param4},
								{"FlatDensity", Param5},
								{"SlopeDensity",	Param5},
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
								{"Coverage",	Param4},
								{"FlatDensity", Param3},
								{"SlopeDensity",	Param5},
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
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.2},
								--{"SlopeDensity",	DensityMediumMultiplier},
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
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
								-- {"SlopeDensity",			DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    Param6}, --***Fixes invisible grass bug
								{"SlopeDensity",			Param6}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"FlatDensity",				Param7}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			Param7}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-- -------------------------------------------------------------------------------------------------------------------------------------------------
-- -- g. CHANGE LANDMARKS TO DISTANTOBJECTS -> removed, causes errors in these biomes
-- -------------------------------------------------------------------------------------------------------------------------------------------------
						
						-- --If DistanceObjects section is closed, replace it to make it open
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							-- }	
						-- },
						
					-- --THEN DO:
					
						-- --If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- -- {
							-- -- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- -- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- -- ["REPLACE_TYPE"] 		= "RAW",
							-- -- ["VALUE_CHANGE_TABLE"] 	= 
							-- -- {
								-- -- { [[    </Property>]], [[]] },
							-- -- }	
						-- -- },
					
					-- --THEN DO:
					
						-- --If Landmarks section is open, remove it so DistanceObjects takes over that section
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks">]], [[]] },
							-- }	
						-- },
						
						-- --Not possible: DistanceObjects == closed && Landmarks == closed
						-- --Not possible: DistanceObjects == open && Landmarks == closed
						
						-- --Add closed Landmarks line after DistantObjects, otherwise error:
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["ADD"] 	= [[    <Property name="Landmarks" />]]
						-- },
	}
return biomeModifier
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_Env_Minima_v4.3.pak",
["MOD_AUTHOR"]				= "Lasagna - with InsaneRuffles code",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = 3. HUGE & MEDIUM/LOW DENSITY(BIOMES 2&3) = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 2A------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD.MBIN",
						--previously [v3.31] from biomes 3:
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3.MBIN",
						--++++"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULL.MBIN", --HUGE rocks everywhere
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUVWPLANTBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\PLANTLARGECROP.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVECUBES.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVEPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CLAMSHELLPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FIENDEGGS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\GEMPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\LANDURCHINS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\METALFORMATION.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\NAVDATA.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PICKUPCUBE.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCBONES.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYTENTACLEPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RARECRYSTALPROPS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RAREROCKS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\STORMCRYSTALS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERGROUNDFUN.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleHugeMultiplier, DensityMediumMultiplier, DensityLowestMultiplier, DensityMedLowMultiplier) --biomes 1
				},
				{
				["MBIN_FILE_SOURCE"] 	= -------BIOMES 3A-----------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS.MBIN", --Large yellow/red oval trees
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleLargeMultiplier, DensityMedHighMultiplier, DensityMediumMultiplier, DensityMediumMultiplier) --biomes 3
				},
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 2B-------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\ULTRAEXTERNALOBJECTS.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCRYSTALS.MBIN",--creates giant crystals, obstructing all water
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCUCUMBERLIGHTS.MBIN", --v2.0: removed
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCURVECORAL.MBIN",--creates giant coral, obstructing all water
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERDEAD.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERFULL.MBIN",--v2.0: removed
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERGASBAGS.MBIN", --v2.0: removed
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMID.MBIN",--
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMONOLITHS.MBIN",--creates plants/shore rocks that stick out of water
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERPLANT.MBIN",--creates giant weeds, obstructing all waterCoverageMultiplier
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifierDISTANTOBJECTS(ScaleHugeMultiplier, DensityMediumMultiplier, DensityLowestMultiplier, DensityMedLowMultiplier) --biomes 1
				},
				{
				["MBIN_FILE_SOURCE"] 	= -------BIOMES 3B-----------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PHYSICSPROPS.MBIN",--
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPHYSICS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BARRENFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\LOW.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\MID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\BEACH\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKGRASS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKSCRUB.MBIN",
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
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SPOREVENTPLANT.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TENTACLEPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXIC.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXICWILD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\WEIRDWILD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifierDISTANTOBJECTS(ScaleLargeMultiplier, DensityMedHighMultiplier, DensityMediumMultiplier, DensityMediumMultiplier) --biomes 3
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 4. OTHER HUGE (BIOMES 4A) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleHuge, ScaleHuge, DensityMediumMultiplier, CoverageMultiplier, DensityMediumMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 5. OTHER HUGE 2 (BIOMES 5A) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN",
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID.MBIN",
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleHuge, ScaleHuge, DensityLowestMultiplier, DensityLowestMultiplier, DensityLowestMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 4B-------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifierDISTANTOBJECTS(ScaleHuge, ScaleHuge, DensityMediumMultiplier, CoverageMultiplier, DensityMediumMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 5B-------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifierDISTANTOBJECTS(ScaleHuge, ScaleHuge, DensityLowestMultiplier, DensityLowestMultiplier, DensityLowestMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},

				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = 6. LOW DENSITY HQ (BIOMES 6) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
--------------------------------------------------------------------------------------------------------------------------------------------------
-- a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc -------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleExtraLarge},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleLarge},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC --------------------------------------------------------------------------------------------------------------------------
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
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.1},
								--{"SlopeDensity",	1.05},
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
								{"Coverage",	CoverageMultiplier},
								{"FlatDensity", DensityMedLowMultiplier},
								--{"SlopeDensity",	1},
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
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.2},
								--{"SlopeDensity",	1},
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
								--{"Coverage",	1},
								--{"FlatDensity", 1},
								--{"SlopeDensity",	1},
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
							["LINE_OFFSET"] 		= "+1",     --one line down
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
							["LINE_OFFSET"] 		= "+1",     --one line down
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
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				0.95}, --***Fixes shadow flickering
								-- {"SlopeDensity",			0.95}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
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
								-- {"MaxRegionRadius",			GRASS_RadiusMultiplier}, --***Don't use these, grass bug --commented out these 4 lines, contributes to extreme low fps
								-- {"MaxImposterRadius",		GRASS_RadiusMultiplier},
								-- {"FadeOutStartDistance",	    GRASS_RadiusMultiplier},
								-- {"FadeOutEndDistance",		GRASS_RadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"FlatDensity",				0.5}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.5}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GRASS_RadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GRASS_RadiusMultiplier},
								-- {"FadeOutStartDistance",	    GRASS_RadiusMultiplier},
								-- {"FadeOutEndDistance",		GRASS_RadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = 7. HIGHEST DENSITY (BIOMES 7) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleExtraLarge, ScaleLarge, DensityHighestMultiplier, CoverageMultiplier, DensityMedLowMultiplier, DensityMedLowMultiplier, DensityPointSevenMultiplier)
				},
--Biomes 7B
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifierDISTANTOBJECTS(ScaleExtraLarge, ScaleLarge, DensityHighestMultiplier, CoverageMultiplier, DensityMedLowMultiplier, DensityMedLowMultiplier, DensityPointSevenMultiplier)
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = 8. MEDIUM DENSITY (BIOMES 8) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS.MBIN", 		--Huge disappearing swirl objects
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleExtraLarge, ScaleLarge, DensityMediumMultiplier, DensityLowestMultiplier, DensityMedLowMultiplier, DensityMedLowMultiplier, DensityPointEightMultiplier)
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = 9. BUGGY BIOMES (BIOMES 9) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleExtraLarge},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleLarge},
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
								{"MaxScale",				ScaleSmallest},
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
								{"MaxScale",				ScaleSmallest},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
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
								{"Coverage",		CoverageMultiplier},
								-- {"FlatDensity", 	1.1},
								-- {"SlopeDensity",	1.05},
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
								{"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	DensityMedLowMultiplier},
								{"SlopeDensity",	DensityLowestMultiplier},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
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
								--{"Coverage",		0.1},
								{"FlatDensity", 	DensityLowestMultiplier},
								--{"SlopeDensity",	0.1},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- {"Coverage",		DensityLowestMultiplier},
								-- {"FlatDensity", 	0.9},
								-- {"SlopeDensity",	DensityLowestMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
								-- {"SlopeDensity",			DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"SlopeDensity",			0.9}, --***Fixes invisible grass Ultra bug
								{"SlopeDensity",			0.9}, --***Fixes invisible grass Ultra bug
								-- {"MaxRegionRadius",			GrassRadiusMultiplier}, --***Don't use these, grass bug
								-- {"MaxImposterRadius",		GrassRadiusMultiplier},
								-- {"FadeOutStartDistance",	    GrassRadiusMultiplier},
								-- {"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = 10. LOW DENSITY LAVA/TENTACLE (BIOMES 10) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleMedium},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleMedium},
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
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
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
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
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
								{"Coverage",	CoverageMultiplier},
								{"FlatDensity", DensityLowestMultiplier},
								--{"SlopeDensity",	1.05},
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
								{"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	DensityLowestMultiplier},
								{"SlopeDensity",	DensityLowestMultiplier},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
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
								-- {"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	0.9},
								-- {"SlopeDensity",	DensityLowestMultiplier},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- {"Coverage",		DensityLowestMultiplier},
								-- {"FlatDensity", 	0.9},
								-- {"SlopeDensity",	DensityLowestMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",				DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
								-- {"SlopeDensity",			DensitySHADOWLowMultiplier}, --***Fixes shadow flickering
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityGRASSLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								--{"MaxImposterRadius",		GrassRadiusMultiplier},
								--{"FadeOutStartDistance",	GrassRadiusMultiplier},
								--{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleGrass},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Placement","GRASS","ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity",			    DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"SlopeDensity",			DensityDETAILLowestMultiplier}, --***Fixes invisible grass bug
								{"MaxRegionRadius",			GrassRadiusMultiplier},
								{"MaxImposterRadius",		GrassRadiusMultiplier},
								{"FadeOutStartDistance",	GrassRadiusMultiplier},
								{"FadeOutEndDistance",		GrassRadiusMultiplier},
								{"MaxAngle",				MaxAngleDetailObjects},
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
								{"MaxAngle",				MaxAngleDetailObjects},
								{"LargeObjectCoverage",		LargeObjectCoverageGrassAlwaysPlace},
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
					},
				},
--------------------------------------------------------------------------------------------------------------------------------------------------
-- Code by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment) ---------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	=
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = 11. JUST CRYSTALS (BIOMES 11) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------------------------------------------------
-- a. DESTROYEDBYSHIP/SCALE/ROTATION/COLLISION CHANGES ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	"True"},
								{"MaxScale",	"15"}, --from ~1
								{"MaxScaleY",	"3"}, --from 1
								{"MaxAngle",	"180"}, --from ~40
								{"PatchEdgeScaling",	"0.75"}, --from 0
								{"MaxXZRotation",	"5"},
								{"CollideWithPlayer",	"True"},
							}
						},
--------------------------------------------------------------------------------------------------------------------------------------------------
-- c. [no b.] LOD DISTANCE/RADIUS/FADE DISTANCE CHANGES ------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
						
--------------------------------------------------------------------------------------------------------------------------------------------------
-- Code originally by InsaneRuffles in section below, modified by Lllasagna (*** = lasagna comment) ----------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"PlacementPriority",		"High"},
								{"MinRegionRadius",			"0"},
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",				CoverageMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier},
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",   	--if we wanted to replace only in a group, we would put a key_word here
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierLandmarks
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",    --ALL means all the file since we have no PRECEDING_KEY_WORDS
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
					
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. CHANGE OBJECTS TO LANDMARKS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

						--If Landmarks section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Landmarks" />]], [[    <Property name="Landmarks">]] },
							}	
						},
						
					--THEN DO:
					
						--If Landmarks was open already (and had a closing </Property>), deletes closing line (above "Objects")
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",},
							-- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    </Property>]], [[]] },
							-- }	
						-- },
					
					--THEN DO:
					
						--If Objects section is open, remove it so Landmarks takes over that section
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Objects">]], [[]] },
							}	
						},
						
						
						--Add closed Objects line after Landmarks, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Objects" />]]
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
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = 13. PATCH SCALE/REGION SCALE/SPAWN DENSITY CHANGES = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--Modifies placement/regions on a planet, i.e. high density areas & expansive open areas
						
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","FOREST",}, --v2.1: Changed these to * 1.5
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplierJustForest}, 	-- Original "64"
								{"RegionScale",				PatchsizeRegionScaleMultiplierJustForest},		-- Original "6"
							}
						},
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","BIOMEPLANT",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "550"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- "0.2"
							-- }
						-- },
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "100"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.75"
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "590"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.1"
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "610"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.1"
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "650"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.1"
							}
						},
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","UNDERGROUND",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "150"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "1"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","SPARSECLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "30"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "5"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","BARRENROCKCLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "25"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "8"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","FLORACLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "5"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "5"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","STORMCRYST",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "220"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "1"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","WILDPLANTS",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "120"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.6"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","GRASS",},
							-- ["VALUE_CHANGE_TABLE"] 	= 		
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplierForest}, 	-- Original "100"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplierForest}		-- Original "5"
							-- }
						-- },
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = 14. FAST START CHANGES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = 15. REMOVE ROCKS/HAZARD PLANTS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/FULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/LOW.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/MID.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
                        },
                    }
                },
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
                        },
                    }
                }
            }
        },
    },
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE