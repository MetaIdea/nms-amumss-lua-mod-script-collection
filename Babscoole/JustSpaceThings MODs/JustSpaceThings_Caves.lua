NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "JustSpaceThings_Caves.pak",
["MOD_AUTHOR"]              = "JuatSpaceThings",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.41",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxScale", "1.4"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                                {"MaxScale",                   "1.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxXZRotation", "3"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxXZRotation", "5"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MinScale", "0.6"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxScale", "0.6"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed", "30"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxScale", "0.45"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxAngle", "100"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEEMPTY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                                {"MaxScale",                   "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION", 
                            ["ADD"] =
[[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="15" />
        <Property name="MaxAngle" value="45" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="True" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.6" />
        <Property name="MaxScale" value="0.9" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="15" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="SupportsScanToReveal" value="False" />
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
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="5" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="110" />
            <Property name="FadeOutEndDistance" value="130" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="25" />
              <Property value="35" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "0.8"},
                                {"MaxScaleY", "2.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",                   "0.9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Coverage", "0.26"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScaleY", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                                {"MaxScale",                   "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.24"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlatDensity", "0.14"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Coverage", "0.54"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.55"}, --1565
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed", "123"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlatDensity", "0.034"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.52"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Coverage", "0.08"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEGRASSBUSHES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/CEILINGPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMWALLSHROOM.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "ULTRA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScaleY", "2.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/SMALLCAVEBUSH.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.06"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed", "100"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed", "101"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMESPARSETOXIC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.28"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxAngle", "20"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxAngle", "20"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SlopeScaling", "0"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SlopeScaling", "0"},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                    }
                },
            }
        }
    }
}