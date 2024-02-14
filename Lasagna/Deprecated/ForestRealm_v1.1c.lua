local modVersion = 3

--[[

Change the above number to one of the following to get a different mod version (changes density)

	3	-	High	= mininum four tree types on planets
	2	-	Med		= mininum three
	1	-	Low		= minimum two

--]]

---------------------------------------------------------------------------------------------------------


local modName = ""
if modVersion == 1 then
	modName = "Low"
elseif modVersion == 2 then
	modName = "Med"
elseif modVersion == 3 then
	modName = "High"
else
	modName = "ErrorSendHelp"
end


local title = "ForestRealm_"..modName.."_v1.1c.pak"


math.randomseed(161616)--initialize random

local Placement = {"G_BIGFOREST","G_FLORACLUMP","G_FLORACLUMP","G_FOREST","G_BIGFUELCROP","G_SENTINEL_RARE1","G_RARE3","G_SPARSECLUMP"}

local RareBigObjPlacement = {"G_CRYSTAL3","G_RARE1","G_RARE2",}

local BigObjPlacement = {"G2_CRYSTAL3","G2_RARE1","G2_RARE2",}

local FreqObjPlacement = {"G3_CRYSTAL3","G3_RARE1","G3_RARE2",}

local HighFreqObjPlacement = {"G4_CRYSTAL3","G4_RARE1","G4_RARE2",}

local RarePlantPlacement = {"SMALLCLUMP","SMALLCLUMP","ROCKCLUMP","JAMESPATCH","FLORACLUMP","BARRENROCKCLUMP"}

local MaxXZRotation = {0,2,4,6,10,15}

local MinScale = {0.5,0.75,1,1.25,1.5,1.75,2}

local MaxScale = {2,2.5,3,4,6,12,20}

local MinScaleBig = {5,7,10,11,12,13,14}

local MaxScaleBig = {14,15,17,18,19,21,22}

local MinScaleMed = {1.5,2,2.25,2.5,2.75,3,3.5}

local MaxScaleMed = {3.5,4.5,5,6,7,8,9}

local MinScaleSmall = {1,1.1,1.15,1.2,1.25,1.3,1.4}

local MaxScaleSmall = {1.4,1.5,1.6,1.75,2,2.5,3}

local GrassPath = {"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS","MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS","MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS","MODELS/PLANETS/BIOMES/COMMON/GRASS/BARRENGRASSLARGE","MODELS/PLANETS/BIOMES/COMMON/GRASS/BARRENGRASSSMALL","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS"}

local DetailPropPath = {"MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH", "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT","MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS","MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW","MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA","MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT","BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE","MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT","MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN","MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS","MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK","MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER","MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS","MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN","MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL","MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS","MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL"}

local TreePath = {"MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREE","MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1"}

local BigObjPath = {"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03","MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC","MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01","MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01","MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03","MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID","MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01","MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02","MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01","MODELS\PLANETS\SNOW\WRECKS\GIANTWRECKEDSHIP","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01","MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01","MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE","MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1","MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1","MODELS\COMMON\ROBOTS\WALKER","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1","MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE","MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE","MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE","MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPSHAPE","MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\ANENOMESHAPE","MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CUCUMBERSHAPE","MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_CAVE","MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_MOUNTAIN","MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_MOUNTAIN","MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM","MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT","MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE","MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE","MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\INAIR\FLOATINGGASBAGS","MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE","MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\UNDERWATER\SEAURCHIN","MODELS\PLANETS\BIOMES\COMMON\COOKING\HEPTAWHEAT","MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT","MODELS\PLANETS\BIOMES\BARREN\PLANTS\THINBUSHTREE","MODELS\PLANETS\BIOMES\HQLUSH\LARGEPROPS\MOSSCOVEREDWEIRDPROP","MODELS\PLANETS\BIOMES\WOODLAND\LARGEPLANT\MEDIUMOAK1","MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1","MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1","MODELS\PLANETS\BIOMES\GLOWING\MEDIUMPLANT\MEDGLOWINGBUSH1","MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\ROTATINGDETAIL","MODELS\PLANETS\BIOMES\LAVA\MEDIUMPROPS\LAVACRYSTALS","MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT","MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT","MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG","MODELS\PLANETS\BIOMES\COMMON\TREES\SKINNEDTREES","MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALSMALL","MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALDRONE","MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT","MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD","MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD","MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER","MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD","MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW","MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE","MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED","MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL","MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE","MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE","MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE","MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE","MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK","MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT","MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO","MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT","MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM","MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE","MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM","MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10","MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING","MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02","MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FROZENUMBRELLA","MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SUMMERSPIKE","MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS","MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS","MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYTWIST","MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYSHELLSAND","MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS","MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR","MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF","MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1","MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREEBARE","MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREE","MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS","MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE63","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE17","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21","MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02"}

local MedObjPath = {"MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLBLOCK","MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD","MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD","MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SINGLEJOINT","MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE","MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHELF","MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL","MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALBROKEN","MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC","MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC","MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT","MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1","MODELS/EFFECTS/HEAVYAIR/BUBBLES/BUBBLES","MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE","MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT","MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER","MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD","MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESPORE2","MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW","MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM","MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE","MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/MEDIUMTENTACLEBLOB","MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE","MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL","MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE","MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT","MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE","MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL","MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SINGLESUMMER","MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGG","MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMSHROOM","MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE","MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLARGEALT","MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT","MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/GROUNDREVEALROCK01","MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK","MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE","MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/SCORCHSEED","MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREESINGLE","MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE","MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE","MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE","MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER","MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SMALLCRYSTAL","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/CRYSTAL","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL","MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESWIRLPLANT","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESTRANDS","MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM","MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS","MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT","MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK","MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE","MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1","MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE","MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT","MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL","MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG","MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE","MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT","MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM","MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMSHROOM","MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DETAILBUBBLE","MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1","MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS","MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH","MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGERINGTREE","MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT","MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/FROZENSPIKE","MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLEEGG","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK","MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMVOLCANICROCKS","MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK","MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS","MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE01"}

local RockPath = {"MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK","MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK","MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK","MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/GROUNDREVEALROCK01","MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1","MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE","MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK","MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMVOLCANICROCKS","MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK","MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK"}

local Density = {0.03,0.035,0.045,0.05,0.053,0.055,0.057}


local replaceObjects =
[[
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects">
    </Property>
    <Property name="Landmarks">
    </Property>
    <Property name="Objects">
    </Property>
    <Property name="DetailObjects">
	</Property>
    <Property name="SelectableObjects" />
  </Property>
]]

local AddDensityTypes =
[[
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_FLORACLUMP" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="SmoothPatch" />
      <Property name="PatchSize" value="6" />
      <Property name="RegionScale" value="5" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_FOREST" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="SmoothPatch" />
      <Property name="PatchSize" value="61" />
      <Property name="RegionScale" value="6" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_BIGFOREST" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="SmoothPatch" />
      <Property name="PatchSize" value="124" />
      <Property name="RegionScale" value="24" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_BIGFUELCROP" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="576" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_SENTINEL_RARE1" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="216" />
      <Property name="RegionScale" value="1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_RARE3" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="634" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_SPARSECLUMP" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="SmoothPatch" />
      <Property name="PatchSize" value="29" />
      <Property name="RegionScale" value="5" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_RARE2" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="203" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_RARE1" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="254" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G_CRYSTAL3" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="345" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G2_RARE2" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="39" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G2_RARE1" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="44" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G2_CRYSTAL3" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="48" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G3_RARE2" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="29" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G3_RARE1" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="31" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G3_CRYSTAL3" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="32" />
      <Property name="RegionScale" value="0.1" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G4_RARE2" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="19" />
      <Property name="RegionScale" value="0.2" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G4_RARE1" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="17" />
      <Property name="RegionScale" value="0.2" />
    </Property>
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="G4_CRYSTAL3" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="14" />
      <Property name="RegionScale" value="0.2" />
    </Property>
]]


--Adds trees and giant props
function AddTrees(treeNum, giantNum)
	
	local forestProp = ""
	local odds = math.random(1, 10) --1:10 chance of huge trees
	
	--Add num tree props
	for z = 1, treeNum do
		forestProp = forestProp .. AddForestProp(1,7, 1,7, Placement, 1, 8, MinScale, MaxScale)
		forestProp = forestProp .. AddForestProp(1,7, 1,7, Placement, 2, 8, MinScale, MaxScale)
	end
	
	--For med version:
	if treeNum == 2 then
		for z = 1, 1 do
			forestProp = forestProp .. AddForestProp(1,7, 1,7, Placement, 2, 8, MinScale, MaxScale)
		end
	end
	
	if odds == 1 then
		--Add huge num tree props
		for z = 1, 1 do
			forestProp = forestProp .. AddForestProp(1,3, 2,2, FreqObjPlacement, 1, 3, MinScaleBig, MaxScaleBig)
		end
	end
	
	--Add num giant rare prop
	for z = 1, giantNum do
		forestProp = forestProp .. AddHugeGiantProp(RareBigObjPlacement, MinScaleBig, MaxScaleBig)
	end
	
	--Add num giant not as rare prop
	for z = 1, giantNum do
		forestProp = forestProp .. AddGiantProp(BigObjPlacement, MinScaleMed, MaxScaleMed)
	end
	
	--Add 1 giant frequent prop
	for z = 1, giantNum do
		forestProp = forestProp .. AddGiantProp(FreqObjPlacement, MinScale, MaxScale)
	end
	
	return forestProp
	
end


--Adds non-tree landmark props i.e. normal sized props
function AddObjects(objectNum)

	local objectProp = ""

	--Add num small-med-large prop
	for y = 1, objectNum do
		objectProp = objectProp .. AddObjectProp(HighFreqObjPlacement, MinScaleSmall, MaxScaleSmall)
	end
	
	return objectProp

end


--Adds rocks
function AddRocks(rockNum)
	
	local rockProp = ""

	--Add num small-med-large prop
	for y = 1, rockNum do
		rockProp = rockProp .. AddRockProp(0.016)
	end
	
	return rockProp

end


--Adds grass and detail props
function AddGrass()
	
	local detailProp = ""
	
	--Add grass props
	for t = 1, 1 do
		detailProp = detailProp .. AddGrassProp()
		
	end
	
	--Add plant/object props
	for w = 1, 1 do
		detailProp = detailProp .. AddRareObjProp(0.03,1,21)
		detailProp = detailProp .. AddRareObjProp(0.025,1,21)
		detailProp = detailProp .. AddRareObjProp(0.018,1,21)
		detailProp = detailProp .. AddRareObjProp(0.027,20,20) --just longaltgrass
	end
	
	return detailProp
	
end


--This adds the exml "context" for each model, i.e. the max scale.
function AddForestProp(minDen, maxDen, minIt, maxIt, placem, placeStartI, placeEndI, minSc, maxSc)

	local densityMed = Density[math.random(minDen, maxDen)]

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. TreePath[math.random(minIt, maxIt)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem[math.random(placeStartI, placeEndI)] .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="30" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minSc[math.random(1, 7)] .. [[" />
        <Property name="MaxScale" value="]] .. maxSc[math.random(1, 7)] .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. MaxXZRotation[math.random(1, 6)] .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.18" />
          <Property name="FlatDensity" value="]] .. densityMed .. [[" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.18" />
            <Property name="FlatDensity" value="]] .. densityMed .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.18" />
            <Property name="FlatDensity" value="]] .. densityMed .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

function AddGiantProp(placementType, minScaleType, maxScaleType)

	local densityBig = Density[math.random(2, 5)]

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. BigObjPath[math.random(1, 120)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placementType[math.random(1, 3)] .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="10" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScaleType[math.random(1, 7)] .. [[" />
        <Property name="MaxScale" value="]] .. maxScaleType[math.random(1, 7)] .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="3" />
          <Property name="FlatDensity" value="]] .. densityBig .. [[" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="3" />
            <Property name="FlatDensity" value="]] .. densityBig .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="3" />
            <Property name="FlatDensity" value="]] .. densityBig .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


function AddObjectProp(placementType, minScaleType, maxScaleType)

	local densityObj = Density[math.random(4, 7)]

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. MedObjPath[math.random(1, 86)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placementType[math.random(1, 3)] .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="20" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScaleType[math.random(1, 7)] .. [[" />
        <Property name="MaxScale" value="]] .. maxScaleType[math.random(1, 7)] .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="3" />
          <Property name="FlatDensity" value="]] .. densityObj .. [[" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="3" />
            <Property name="FlatDensity" value="]] .. densityObj .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="3" />
            <Property name="FlatDensity" value="]] .. densityObj .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


function AddHugeGiantProp(placementType, minScaleType, maxScaleType)

	local densityGiant = Density[math.random(4, 7)]

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. BigObjPath[math.random(1, 120)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placementType[math.random(1, 3)] .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="10" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScaleType[math.random(1, 7)] .. [[" />
        <Property name="MaxScale" value="]] .. maxScaleType[math.random(1, 7)] .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="3" />
          <Property name="FlatDensity" value="]] .. densityGiant .. [[" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="3" />
            <Property name="FlatDensity" value="]] .. densityGiant .. [[" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="9999" />
            <Property name="MaxImposterRadius" value="9999" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="500" />
              <Property value="1000" />
              <Property value="1500" />
              <Property value="2000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


replaceGrassMatFlags =
[[
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F02_SKINNED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F36_DOUBLESIDED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
  </Property>
]]


function AddGrassProp()
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. GrassPath[math.random(1, 7)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASS" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="75" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.0" />
        <Property name="MinScaleY" value="1.3" />
        <Property name="MaxScaleY" value="1.3" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.5" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0.5" />
          <Property name="SlopeMultiplier" value="2.5" />
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.5" />
            <Property name="SlopeDensity" value="0.5" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="96" />
            <Property name="FadeOutEndDistance" value="114" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.5" />
            <Property name="SlopeDensity" value="0.5" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


function AddRockProp(rockDensity)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. RockPath[math.random(1, 10)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. RarePlantPlacement[math.random(1, 6)] .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.5" />
        <Property name="MaxScale" value="0.7" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.5" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.3" />
          <Property name="FlatDensity" value="]] .. rockDensity .. [[" />
          <Property name="SlopeDensity" value="0.03" />
          <Property name="SlopeMultiplier" value="2.5" />
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="]] .. rockDensity .. [[" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="63" />
            <Property name="FadeOutEndDistance" value="81" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="]] .. rockDensity .. [[" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


function AddRareObjProp(plantDensity, minI, maxI)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. DetailPropPath[math.random(minI, maxI)] .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. RarePlantPlacement[math.random(1, 6)] .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.0" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.5" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.2" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.12" />
          <Property name="FlatDensity" value="]] .. plantDensity .. [[" />
          <Property name="SlopeDensity" value="0.03" />
          <Property name="SlopeMultiplier" value="2.5" />
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.12" />
            <Property name="FlatDensity" value="]] .. plantDensity .. [[" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="63" />
            <Property name="FadeOutEndDistance" value="81" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.16" />
            <Property name="FlatDensity" value="]] .. plantDensity .. [[" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

replaceCGDesc =
[[
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_7" />
          <Property name="Name" value="_lushgrass_7" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_1" />
          <Property name="Name" value="_lushgrass_1" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_3" />
          <Property name="Name" value="_lushgrass_3" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_6" />
          <Property name="Name" value="_lushgrass_6" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_5" />
          <Property name="Name" value="_lushgrass_5" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_4" />
          <Property name="Name" value="_lushgrass_4" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_8" />
          <Property name="Name" value="_lushgrass_8" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_2" />
          <Property name="Name" value="_lushgrass_2" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
]]

--This adds basic collisions to pre-release models:
AddBasicCollisions = --scale y&z flipped compared to blender (v2.6: 0.24 from 0.189618)
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.852212" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="4.113077" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddStargateMainCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="33.7089" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="14.7729" />
        <Property name="ScaleY" value="94.0191" />
        <Property name="ScaleZ" value="43.707" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddSailPlantCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="9.01606" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.08925" />
        <Property name="ScaleY" value="1.08925" />
        <Property name="ScaleZ" value="1.08925" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddStargateSmallCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.1063" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.98886" />
        <Property name="ScaleY" value="16.1781" />
        <Property name="ScaleZ" value="7.06369" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddConstruct01Collisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.545434" />
        <Property name="TransY" value="25.3086" />
        <Property name="TransZ" value="0.000005" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="18" />
        <Property name="ScaleY" value="53.1329" />
        <Property name="ScaleZ" value="9.2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddDiploCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="2.71673" />
            <Property name="TransZ" value="0.696974" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="4.12627" />
            <Property name="ScaleY" value="6.65969" />
            <Property name="ScaleZ" value="12.822" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.12627" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.65969" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12.822" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="7.99469" />
            <Property name="TransZ" value="-6.20225" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="17.5435" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17.5435" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddLargePyramidCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-1.18213" />
            <Property name="TransZ" value="1.81038" />
            <Property name="RotX" value="-0.000003" />
            <Property name="RotY" value="-0.000008" />
            <Property name="RotZ" value="43.2926" />
            <Property name="ScaleX" value="25.036" />
            <Property name="ScaleY" value="17.2584" />
            <Property name="ScaleZ" value="29.1401" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="25.036" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17.2584" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="29.1401" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.000004" />
            <Property name="TransY" value="-0.000009" />
            <Property name="TransZ" value="-1.97872" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="50.8707" />
            <Property name="ScaleX" value="25.293" />
            <Property name="ScaleY" value="11.5588" />
            <Property name="ScaleZ" value="12.9888" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="25.293" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="11.5588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12.9888" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddLargeFir01Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.558016" />
        <Property name="TransY" value="7.22953" />
        <Property name="TransZ" value="0.332784" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-0.000002" />
        <Property name="RotZ" value="8.91439" />
        <Property name="ScaleX" value="1.2" />
        <Property name="ScaleY" value="18.7235" />
        <Property name="ScaleZ" value="1.2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddPanelCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.78808" />
        <Property name="ScaleY" value="0.18821" />
        <Property name="ScaleZ" value="4.25468" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddGiantCubeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="35.2645" />
        <Property name="RotY" value="-0.547245" />
        <Property name="RotZ" value="-22.8467" />
        <Property name="ScaleX" value="18" />
        <Property name="ScaleY" value="18" />
        <Property name="ScaleZ" value="18" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddTinyCubesCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.093606" />
        <Property name="TransY" value="0.299448" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.15984" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddGiantSpikeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.151165" />
        <Property name="TransY" value="2.04694" />
        <Property name="TransZ" value="0.069311" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.91557" />
        <Property name="ScaleY" value="5.63382" />
        <Property name="ScaleZ" value="1.91106" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddPillar1Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.740098" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.722315" />
        <Property name="ScaleY" value="2.51915" />
        <Property name="ScaleZ" value="0.802045" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddSquatPillar1Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.050811" />
        <Property name="TransY" value="1.97316" />
        <Property name="TransZ" value="0.084956" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.3972" />
        <Property name="ScaleY" value="5.03717" />
        <Property name="ScaleZ" value="2.66415" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddAntelopeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.7109" />
        <Property name="TransZ" value="0.302117" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.606732" />
        <Property name="ScaleY" value="1.32638" />
        <Property name="ScaleZ" value="1.808" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddAstronaut01Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.059928" />
        <Property name="TransY" value="0.715976" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.527036" />
        <Property name="ScaleY" value="1.96271" />
        <Property name="ScaleZ" value="1.0" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddWalkerCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.37249" />
        <Property name="TransZ" value="-0.098499" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.754088" />
        <Property name="ScaleY" value="2.84987" />
        <Property name="ScaleZ" value="1.14702" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddSmallTree3Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-4.3351" />
            <Property name="TransY" value="2.62361" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1.4" />
            <Property name="ScaleY" value="5.32182" />
            <Property name="ScaleZ" value="1.4" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.4" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.32182" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.4" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.92216" />
            <Property name="TransY" value="2.38741" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1.8" />
            <Property name="ScaleY" value="5.97841" />
            <Property name="ScaleZ" value="1.8" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.8" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.97841" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.8" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.175636" />
            <Property name="TransY" value="5.24692" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="7.89745" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7.89745" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= title,
["MOD_AUTHOR"]				= "AGhostlyPepper",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
			
			--Add new density types
			{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "GcSpawnDensity.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddDensityTypes,
						},
					}
				},
				
			--Add collisions
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG02.SCENE.MBIN",
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG01.SCENE.MBIN",
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\BARREN\LARGEPROPS\LARGEFLAG.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONOLITH\MONOLITH.SCENE.MBIN", --ok
						--"MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", --ok
						--"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC.SCENE.MBIN", --ok
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEBUSH1.SCENE.MBIN", --ok
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE02.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE03.SCENE.MBIN", --bugged
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", --big
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01.SCENE.MBIN",
						--"MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN",
						--"MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN",
						--"MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", --"M"-shaped tree
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddConstruct01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddDiploCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddLargePyramidCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", --big
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddLargeFir01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddPanelCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddGiantCubeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddTinyCubesCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddGiantSpikeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddPillar1Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSquatPillar1Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddAntelopeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddAstronaut01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddWalkerCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", --"M"-shaped tree
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSmallTree3Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATEMAIN.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddStargateMainCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATESMALL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddStargateSmallCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSailPlantCollisions,
						},
					}
				},
			
			
				--Copy vanilla files to custombiomes folder
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1A.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVECUBES.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1B.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVEPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1C.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CLAMSHELLPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1D.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\EXTREMESENTINELPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1E.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FIENDEGGS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1F.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPHYSICS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1G.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1H.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\GEMPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1I.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\INFESTATION.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1J.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\LANDURCHINS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1K.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\METALFORMATION.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1L.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\NAVDATA.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1M.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PHYSICSPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1N.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PHYSICSSPOREPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1O.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PICKUPCUBE.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1P.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCBONES.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Q.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1R.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1S.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYTENTACLEPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1T.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RARECRYSTALPROPS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1U.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RAREROCKS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1V.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ROBOTHEADS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1W.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\STORMCRYSTALS.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1X.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERGROUNDFUN.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Y.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Z.MBIN"},
					},
				},


					--custombiomes set 1 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					
					--custombiomes set 2 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 3 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 4 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 5 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 6 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 7 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 8 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 9 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 10 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 11 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 12 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 13 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 14 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 15 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--Cats can hear ultrasound.
					--custombiomes set 16 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 17 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 18 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 19 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 20 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20A.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21A.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20B.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21B.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20C.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21C.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20D.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21D.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20E.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21E.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20F.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21F.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20G.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21G.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20H.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21H.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20I.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21I.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20J.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21J.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20K.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21K.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20L.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21L.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20M.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21M.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20N.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21N.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20O.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21O.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20P.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21P.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Q.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Q.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20R.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21R.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20S.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21S.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20T.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21T.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20U.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21U.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20V.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21V.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20W.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21W.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20X.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21X.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Y.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Y.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { {"CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Z.MBIN","CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Z.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					--custombiomes set 21 --------------------------------------------------------------------------------------------------------------------------------
					
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21A.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21B.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21C.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21D.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21E.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21F.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21G.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21H.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21I.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21J.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21K.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21L.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21M.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21N.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21O.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21P.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Q.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21R.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21S.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21T.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21U.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21V.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21W.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21X.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Y.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					{ ["MBIN_FILE_SOURCE"] 	=  { "CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Z.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddTrees(modVersion, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjects(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRocks(1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrass(), },
					}, },
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					

				
				
				
				
				--change original dandelion grass material flags (= multishade & white dandelion)
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS\LUSHGRASS1MAT1.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--Replace material flags:
						{
							["PRECEDING_KEY_WORDS"] = {"Flags",},
							["ADD"] = replaceGrassMatFlags,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Flags",},
							["REMOVE"] = "SECTION"
						},
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\NEWCROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{



						--REMOVE new grass_curly option (no old version of this model)
						
						{
							["SPECIAL_KEY_WORDS"] = {"Id","_GRASS_CURLY",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{


						--Reorder descriptor to match newcrossgrass
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["ADD"] = replaceCGDesc,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
            }
        },
    },
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE