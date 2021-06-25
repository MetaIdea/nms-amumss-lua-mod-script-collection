SHIP_SEED_LIST = --Add your own seeds here, 200 additional random seeds per ship type get generated too
{
	["FIGHTER"] =
	{
		--"-4266666232903262234", --HORIZOSHIP
		--"-8174559354674307366" --ALPHAVSHIP
		
	}, 
	["DROPSHIP"] =
	{
		
	},
	["SCIENTIFIC"] =
	{
		
	},
	["SHUTTLE"] =
	{
		
	}, 
	["ROYAL"] =
	{
		
	}
}

NUMBER_OF_SEEDS_PER_SHIP = 10--5 --50 crash

CATEGORY = { "FIGHTER", "DROPSHIP", "SCIENTIFIC", "SHUTTLE", "ROYAL" }




NUMBER_OF_UNIQUE_SEEDS = NUMBER_OF_SEEDS_PER_SHIP * #CATEGORY
for i=1,#CATEGORY,1 do NUMBER_OF_UNIQUE_SEEDS = NUMBER_OF_UNIQUE_SEEDS + #SHIP_SEED_LIST[CATEGORY[i]] end


SPAWN_DENSITY = 0.005/NUMBER_OF_UNIQUE_SEEDS
COVERAGE = 10
PATCH_SIZE = 80 --60 crash
REGION_SCALE = 2 --3 working, partly, 5 crash
COVERAGE_TYPE = "GridPatch" --"SmoothPatch", "Total", "GridPatch"


MAX_RADIUS = 1
SEED = 0

FILE_TABLE = 
{
	["FIGHTER"]={"MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"},
	["DROPSHIP"]={"MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"}, 
	["SCIENTIFIC"]={"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"}, 
	["SHUTTLE"]={"MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"}, 
	["ROYAL"]={"MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"}	
}

function GetSeed()
	local SEED = "0x"
	local HEX = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
	--math.randomseed(77*os.time())
	math.random() math.random() math.random()
	for i=1,16,1 do
		SEED = SEED .. HEX[math.random(1, #HEX)]
	end
	return SEED
end

function HexToDec(number)
	if type(number) == "number" then return number
	elseif string.find(tostring(number),"0x") then return tonumber(number)
	else return tonumber(number,16) end
end

function CreateNewEntry()
LEVELONEOBJECTS_ENTRY =
[[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. SCENE_FILE .. [[" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="]] .. SEED .. [[" />
            <Property name="UseSeedValue" value="True" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="BLANKETCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="Coverage" value="]] .. COVERAGE .. [[" />
        <Property name="FlatDensity" value="]] .. SPAWN_DENSITY .. [[" />
        <Property name="SlopeDensity" value="]] .. SPAWN_DENSITY .. [[" />
        <Property name="SlopeMultiplier" value="1" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="360" />
        <Property name="MinRegionRadius" value="0" />
        <Property name="MaxRegionRadius" value="]] .. MAX_RADIUS .. [[" />
        <Property name="MaxImposterRadius" value="0" />
        <Property name="FadeInStartDistance" value="0" />
        <Property name="FadeInEndDistance" value="0" />
        <Property name="FadeInOffsetDistance" value="0" />
        <Property name="FadeOutStartDistance" value="9999" />
        <Property name="FadeOutEndDistance" value="9999" />
        <Property name="FadeOutOffsetDistance" value="200" />
        <Property name="LodDistances">
          <Property value="0" />
          <Property value="20" />
          <Property value="60" />
          <Property value="150" />
          <Property value="500" />
        </Property>
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerShip" value="False" />
        <Property name="DestroyedByTerrainEdit" value="False" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
      </Property>	
]]
end

LEVELONEOBJECTS_NEW = ""
SCENE_FILE = ""

for i=1,#CATEGORY,1 do
	for j=1,NUMBER_OF_SEEDS_PER_SHIP-#SHIP_SEED_LIST[CATEGORY[i]],1 do
		SCENE_FILE = FILE_TABLE[CATEGORY[i]][1]
		SEED = HexToDec(GetSeed())
		--print("New Ship Seed: " .. SEED)
		CreateNewEntry()
		LEVELONEOBJECTS_NEW = LEVELONEOBJECTS_NEW .. LEVELONEOBJECTS_ENTRY
	end
	for j=1,#SHIP_SEED_LIST[CATEGORY[i]],1 do
		SCENE_FILE = FILE_TABLE[CATEGORY[i]][1]
		SEED = HexToDec(SHIP_SEED_LIST[CATEGORY[i]][j])
		--print("New Ship Seed: " .. SEED)
		CreateNewEntry()
		LEVELONEOBJECTS_NEW = LEVELONEOBJECTS_NEW .. LEVELONEOBJECTS_ENTRY
	end
end

SPAWNDENSITYLIST_ENTRY =
[[
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="SHIP" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="]] .. COVERAGE_TYPE .. [[" />
      <Property name="PatchSize" value="]] .. PATCH_SIZE .. [[" />
      <Property name="RegionScale" value="]] .. REGION_SCALE .. [[" />
    </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedRandomShipsWorldSpawner.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN"
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN"
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULLSAFE.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN"			
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects", "Objects"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= LEVELONEOBJECTS_NEW
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"PatchSize",					0 	},
								--{"RegionScale",					0 	},
								{"Active",					"False" }								
							}
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"DensityList"},
							-- ["LINE_OFFSET"] 		= "+0",
							-- --["ADD"] 				= SPAWNDENSITYLIST_ENTRY
						-- },
						{
							["PRECEDING_KEY_WORDS"] = {"BLANKETCLUMP"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",					PATCH_SIZE 		},
								{"RegionScale",					REGION_SCALE 	},
								{"CoverageType",				COVERAGE_TYPE 	},
								{"Active",						"True"  		}								
							}
						}					
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCTERRAINGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DebugFlattenAllTerrain",  "True"}								
							}
						}
					}
				}
			}
		}
	}
}

