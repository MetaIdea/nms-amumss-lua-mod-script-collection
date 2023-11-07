--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

LUSHLOWTREES = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN" />
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
                    <Property name="Layer" value="OVERLAY" />
                    <Property name="Group" value="BARKO" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Rock" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.673" />
                      <Property name="G" value="0.641" />
                      <Property name="B" value="0.567" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="GRASS" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="BARK" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Wood" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.93" />
                      <Property name="G" value="0.891" />
                      <Property name="B" value="0.838" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.164" />
                      <Property name="G" value="0.509" />
                      <Property name="B" value="0.63" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="2" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="LEAF" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.923" />
                      <Property name="G" value="0.484" />
                      <Property name="B" value="0.046" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                </Property>
              </Property>
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="COLOUR" />
                    <Property name="Group" value="BARKC" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.164" />
                      <Property name="G" value="0.509" />
                      <Property name="B" value="0.63" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="BARKB" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.542" />
                      <Property name="G" value="0.67" />
                      <Property name="B" value="0.333" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="SPARSECLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="SameSeed" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="50" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.7" />
        <Property name="MaxScale" value="2.3" />
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
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
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
            <Property name="Coverage" value="0.15" />
            <Property name="FlatDensity" value="0.11" />
            <Property name="SlopeDensity" value="0.11" />
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
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a chance for a new metallic tree model to spawn on Weird worlds.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/BEAMSTONE/METALLICTREESBEAMSOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/BONESPIRE/BONESPIREOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/BONESPIRE/METALLICTREESBONESPIREOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/CONTOUR/METALLICTREESCONTOUROBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/ELBUBBLE/METALLICTREESELBUBBLEOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/FRACTALCUBE/METALLICTREESFRACTCUBEOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/HEXAGON/METALLICTREESHEXAGONOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/HYDROGARDEN/HYDROGARDENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/HYDROGARDEN/METALLICTREESHYDROGARDENOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/IRRISHELLS/IRRISHELLSOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/IRRISHELLS/METALLICTREESIRRISHELLSOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/MSTRUCTURES/METALLICTREESMSTRUCTOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/SHARDS/METALLICTREESSHARDSOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/WEIRD/WIRECELLS/WIRECELLSOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/WIRECELLS/METALLICTREESWIRECELLSOBJECTSDEAD.MBIN"},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/BEAMSTONE/METALLICTREESBEAMSOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/BONESPIRE/METALLICTREESBONESPIREOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/CONTOUR/METALLICTREESCONTOUROBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/ELBUBBLE/METALLICTREESELBUBBLEOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/FRACTALCUBE/METALLICTREESFRACTCUBEOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/HEXAGON/METALLICTREESHEXAGONOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/HYDROGARDEN/METALLICTREESHYDROGARDENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/IRRISHELLS/METALLICTREESIRRISHELLSOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/MSTRUCTURES/METALLICTREESMSTRUCTOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/SHARDS/METALLICTREESSHARDSOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/WIRECELLS/METALLICTREESWIRECELLSOBJECTSDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Reduce density slightly to accommodate new trees
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",0.9},
								{"SlopeDensity",0.9},
							}
						},
						{--Add trees
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["ADD"] = LUSHLOWTREES
						},
						{--Replace the model path
							["VALUE_CHANGE_TABLE"] = {
								{"Filename","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/METALLICTREES/LARGEPROPS/LARGETREEBARE.SCENE.MBIN"}
							}
						},
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/BEAMSTONE/METALLICTREESBEAMSOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/BONESPIRE/METALLICTREESBONESPIREOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/CONTOUR/CONTOURBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/CONTOUR/METALLICTREESCONTOUROBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/ELBUBBLE/METALLICTREESELBUBBLEOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/FRACTALCUBE/METALLICTREESFRACTCUBEOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/HEXAGON/HEXAGONBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/HEXAGON/METALLICTREESHEXAGONOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/HYDROGARDEN/METALLICTREESHYDROGARDENOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/IRRISHELLS/METALLICTREESIRRISHELLSOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/MSTRUCTURES/METALLICTREESMSTRUCTOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/SHARDS/SHARDSBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/SHARDS/METALLICTREESSHARDSOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/WEIRD/WIRECELLS/METALLICTREESWIRECELLSOBJECTSDEAD.MBIN" />
        </Property>]]
						}
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE