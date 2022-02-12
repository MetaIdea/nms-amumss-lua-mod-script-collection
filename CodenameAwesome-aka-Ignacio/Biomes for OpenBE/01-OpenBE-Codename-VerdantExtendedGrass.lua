--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

--I'm reducing the overall density and increasing the scale of grass by the same factor, in order to improve performance. You can set these two values to 1 if you want.
SCALE_MULTIPLIER = 1.25
MIN_SCALE_Y_MULTIPLIER = 1/SCALE_MULTIPLIER
DENSITY_MULTIPLIER = 1/SCALE_MULTIPLIER

RENDER_DISTANCE_MULTIPLIER = 3
LOD_LAYERS = 4 --WHOLE INTEGERS ONLY

function generate_grass(Filename,DISTANCE_MULTIPLIER)
	return [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]]..Filename..[[" />
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
        <Property name="PlacementSeed" value="GcSeed.xml">
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
        <Property name="MaxAngle" value="55" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.75" />
        <Property name="MaxScale" value="1.3" />
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
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
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
            <Property name="FlatDensity" value="0.7" />
            <Property name="SlopeDensity" value="0.7" />
            <Property name="SlopeMultiplier" value="2.8" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="]]..(35*DISTANCE_MULTIPLIER)..[[" />
            <Property name="FadeOutEndDistance" value="]]..(45*DISTANCE_MULTIPLIER)..[[" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="500" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.7" />
            <Property name="SlopeDensity" value="0.7" />
            <Property name="SlopeMultiplier" value="2.5" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="]]..(35*DISTANCE_MULTIPLIER)..[[" />
            <Property name="FadeOutEndDistance" value="]]..(45*DISTANCE_MULTIPLIER)..[[" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

BUBBLELUSHGRASS = [[]]
NEWCROSSGRASS = [[]]
NEWLUSHGRASS = [[]]

for LOD = 1, LOD_LAYERS, 1
do
	DISTANCE_MULTIPLIER = (LOD/LOD_LAYERS) * RENDER_DISTANCE_MULTIPLIER
	
	BUBBLELUSHGRASS = BUBBLELUSHGRASS .. generate_grass([[MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN]],DISTANCE_MULTIPLIER)
	NEWCROSSGRASS = NEWCROSSGRASS .. generate_grass([[MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN]],DISTANCE_MULTIPLIER)
	NEWLUSHGRASS = NEWLUSHGRASS .. generate_grass([[MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN]],DISTANCE_MULTIPLIER)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds multiple grass layers of varirying densities to increase grass render distance",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--"MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHBUBBLEOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
								{"MinScaleY",MIN_SCALE_Y_MULTIPLIER},
							}
						},
					}
				},
				{--"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
								{"MinScaleY",MIN_SCALE_Y_MULTIPLIER},
							}
						},
					}
				},
				{--"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHINFESTEDOBJECTS.MBIN",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"SlopeDensity",DENSITY_MULTIPLIER/LOD_LAYERS},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
								{"MinScaleY",MIN_SCALE_Y_MULTIPLIER},
							}
						},
					}
				},
				{--Make low density grass accurate again
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYOBJECTS.MBIN",
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
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN",
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
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSMID.MBIN",
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