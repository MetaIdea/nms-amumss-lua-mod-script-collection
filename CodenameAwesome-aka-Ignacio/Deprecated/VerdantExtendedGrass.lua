--I'm reducing the overall density and increasing the scale of grass by the same factor, in order to improve performance. You can set these two values to 1 if you want.
SCALE_MULTIPLIER = 1.25
DENSITY_MULTIPLIER = 0.75

BASEFADEOUTSTART = 35
BASEFADEOUTEND = 45

LOD_LAYERS = 3 --WHOLE INTEGERS ONLY
RENDER_DISTANCE_MULTIPLIER = 2.5 --Can be float or integer


GRASS_PART1 = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]]
GRASS_PART2 = [[" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="1" />
            <Property name="UseSeedValue" value="True" />
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
                    <Property name="OptionName" value="6" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASS" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="Coverage" value="1" />
        <Property name="FlatDensity" value="0.7" />
        <Property name="SlopeDensity" value="0.7" />
        <Property name="SlopeMultiplier" value="2.8" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="55" />
        <Property name="MinRegionRadius" value="0" />
        <Property name="MaxRegionRadius" value="5" />
        <Property name="MaxImposterRadius" value="10" />
        <Property name="FadeInStartDistance" value="0" />
        <Property name="FadeInEndDistance" value="0" />
        <Property name="FadeInOffsetDistance" value="0" />
        <Property name="FadeOutStartDistance" value="]]
GRASS_PART3 = [[" />
        <Property name="FadeOutEndDistance" value="]]
GRASS_PART4 = [[" />
        <Property name="FadeOutOffsetDistance" value="5" />
        <Property name="LodDistances">
          <Property value="0" />
          <Property value="8" />
          <Property value="15" />
          <Property value="25" />
          <Property value="500" />
        </Property>
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.5" />
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
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
      </Property>
]]--Intentional extra line here

BUBBLELUSHGRASS = [[]]
NEWCROSSGRASS = [[]]
NEWLUSHGRASS = [[]]

for LOD = 1, LOD_LAYERS, 1
do
	DISTANCE_MULTIPLIER = (LOD/LOD_LAYERS) * RENDER_DISTANCE_MULTIPLIER
	
	BUBBLELUSHGRASS = BUBBLELUSHGRASS .. GRASS_PART1 .. [[MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN]] .. GRASS_PART2 .. tostring(BASEFADEOUTSTART*DISTANCE_MULTIPLIER) .. GRASS_PART3 .. tostring(BASEFADEOUTEND*DISTANCE_MULTIPLIER) .. GRASS_PART4
	NEWCROSSGRASS = NEWCROSSGRASS .. GRASS_PART1 .. [[MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN]] .. GRASS_PART2 .. tostring(BASEFADEOUTSTART*DISTANCE_MULTIPLIER) .. GRASS_PART3 .. tostring(BASEFADEOUTEND*DISTANCE_MULTIPLIER) .. GRASS_PART4
	NEWLUSHGRASS = NEWLUSHGRASS .. GRASS_PART1 .. [[MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN]] .. GRASS_PART2 .. tostring(BASEFADEOUTSTART*DISTANCE_MULTIPLIER) .. GRASS_PART3 .. tostring(BASEFADEOUTEND*DISTANCE_MULTIPLIER) .. GRASS_PART4
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-VerdantExtendedGrassDistance.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Adds multiple grass layers of varirying densities to increase grass render distance",         --optional, for reference
  ["MOD_AUTHOR"]				= "CodenameAwesome", 
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--"MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTSULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTSULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTSULTRA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove existing grass
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
						{--Add new grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = BUBBLELUSHGRASS
						},
						{--Tweak scale and density (SUPER IMPORTANT)
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						},
					}
				},
				{--Add grass to Lush dead
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Add grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = NEWCROSSGRASS
						},
						{--Tweak scale and density (SUPER IMPORTANT)
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						},
					}
				},
				{--"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES//HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES//HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULLULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULLULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULLULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTSULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTSULTRA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove existing grass
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
						{--Add new grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = NEWCROSSGRASS
						},
						{--Tweak scale and density (SUPER IMPORTANT)
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						},
					}
				},
				{--"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULLULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDOBJECTSULTRA.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHULTRAOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove existing grass
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
						{--Add new grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = NEWLUSHGRASS
						},
						{--Tweak scale and density (SUPER IMPORTANT)
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						},
					}
				},
				{--Make low density grass accurate again
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTSULTRA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",(0.55/LOD_LAYERS)*DENSITY_MULTIPLIER},
								{"SlopeDensity",(0.25/LOD_LAYERS)*DENSITY_MULTIPLIER},
							}
						}
					}
				},
				{--Make low density grass accurate again
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",(0.5/LOD_LAYERS)*DENSITY_MULTIPLIER},
								{"SlopeDensity",(0.5/LOD_LAYERS)*DENSITY_MULTIPLIER},
							}
						}
					}
				},
				{--Remove grass from slopes that shouldn't have them
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"SlopeDensity",0}
							}
						}
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE