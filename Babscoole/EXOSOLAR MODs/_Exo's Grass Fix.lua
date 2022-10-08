MINSCALE_MULTIPLIER = 1.1  --1.0
MAXSCALE_MULTIPLIER = 1.5  --1.3
DENSITY_MULTIPLIER = 0.67  --0.77
LUSH_MINSCALE_MULTIPLIER = 1.0
LUSH_MAXSCALE_MULTIPLIER = 1.3
LUSH_DENSITY_MULTIPLIER = 0.77


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's Grass Fix.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.00",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},				
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},														
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},						
							["ADD"] = [[            <Property name="Samplers" />]],			
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,						
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},								
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},							
								{"MaxImposterRadius",	"8"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},								
								{"MaxImposterRadius",	"6"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+2",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"8"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+3",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+4",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},				
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},						
                            ["INTEGER_TO_FLOAT"] = "FORCE",								
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},								
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},					
							}
						},							
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",						 
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",						 
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",						 
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",						 
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},					
						{
							["PRECEDING_KEY_WORDS"] = {"SelectableObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = [[    <Property name="SelectableObjects" />]],
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},						
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "0.8",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MinScale",			"1.04"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "1",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MaxScale",			"1.3"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "0.7",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MinScale",			"0.91"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "0.9",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MaxScale",			"1.17"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "1",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MinScale",			"1.3"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "1.2",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MaxScale",			"1.56"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "0.6",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MinScale",			"0.78"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "1.5",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MaxScale",			"1.95"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "1.9",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MinScale",			"2.47"},
							-- }
						-- },
						-- {
							-- ["REPLACE_TYPE"]       = "ALL",
							-- ["VALUE_MATCH"]        = "2.1",
                            -- ["INTEGER_TO_FLOAT"]   = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"MaxScale",			"2.73"},
							-- }
						-- },
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BUILDINGDRESSING.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SelectableObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml",},
							["LINE_OFFSET"] = "+4",
							["ADD"] =
[[
    <Property name="DetailObjects" />
    <Property name="SelectableObjects" />
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BUILDINGDRESSINGGLOW.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SelectableObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml",},
							["LINE_OFFSET"] = "+4",
							["ADD"] =
[[
    <Property name="DetailObjects" />
    <Property name="SelectableObjects" />
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGELUSH\HUGELUSHOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},				
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},							
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},														
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},						
							["ADD"] = [[            <Property name="Samplers" />]],			
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,						
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},								
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},							
								{"MaxImposterRadius",	"8"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},								
								{"MaxImposterRadius",	"6"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+3",														
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+4",														
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},				
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",														
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","GcObjectSpawnDataVariant.xml",},
							["ADD_OPTION"]  = "ADDafterSECTION",						
							["ADD"] =
[[
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.36" />
            <Property name="SlopeDensity" value="0.4" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="10" />
              <Property value="20" />
              <Property value="35" />
              <Property value="180" />
            </Property>
          </Property>
]]
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SelectableObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = [[    <Property name="SelectableObjects" />]],
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","Seed",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","Samplers",},
							["REMOVE"] = "SECTION"
						},
						{					
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","ProceduralTexture",},					
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Placement", "GRASS"},
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MatchGroundColour",	"True"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.5"},
								{"CreaturesCanEat",		"False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
								{"FadeOutStartDistance","35"},
								{"FadeOutEndDistance",	"45"},
								{"FadeOutOffsetDistance","5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","LodDistances"},
							["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"8"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","LodDistances"},
							["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","LodDistances",},
							["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","LodDistances",},
							["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutEndDistance",	"120"},
								{"FadeOutOffsetDistance","15"},	
							}
						},					
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
							["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
							["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},												
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
							["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
							["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,						
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.51"},
								{"MaxScale",			"1.52"},
								{"MinScaleY",			"0.751"},
								{"MaxScaleY",			"0.752"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",		"0.85"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.185"},
								{"FlatDensity",			"0.32"},
								{"SlopeDensity",		"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},						
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.185"},
								{"FlatDensity",			"0.32"},
								{"SlopeDensity",		"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",	"8"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml"},	
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.185"},
								{"FlatDensity",			"0.32"},
								{"SlopeDensity",		"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",	"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutEndDistance",	"120"},
								{"FadeOutOffsetDistance","15"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},				
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MatchGroundColour",			"True"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",		"0.5"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},								
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
								{"FadeOutStartDistance","35"},
								{"FadeOutEndDistance",	"45"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",LUSH_MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",LUSH_DENSITY_MULTIPLIER},
								{"SlopeDensity",LUSH_DENSITY_MULTIPLIER},
								{"MaxScale",LUSH_MAXSCALE_MULTIPLIER},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,							
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"2.01"},
								{"MaxScale",			"2.02"},
								{"MinScaleY",			"0.81"},
								{"MaxScaleY",			"0.82"},
								{"SlopeScaling",		"1.1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},						
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",LUSH_MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",LUSH_DENSITY_MULTIPLIER},
								{"SlopeDensity",LUSH_DENSITY_MULTIPLIER},
								{"MaxScale",LUSH_MAXSCALE_MULTIPLIER},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"2.01"},
								{"MaxScale",			"2.02"},
								{"MinScaleY",			"0.81"},
								{"MaxScaleY",			"0.82"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",			"0.5"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,							
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},	
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},	
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","Samplers",},
							["REMOVE"] = "SECTION"
						},
						{					
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","ProceduralTexture",},					
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{					
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml",},						
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Placement",	"GRASS"},
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MatchGroundColour",	"True"},								
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.5"},
								{"CreaturesCanEat",		"False"},			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
								{"FadeOutStartDistance","35"},
								{"FadeOutEndDistance",	"45"},
								{"FadeOutOffsetDistance","5"},
							}
						},														
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml",},
							["LINE_OFFSET"] = "+10",
							["ADD_OPTION"]  = "ADDafterline",							
							["ADD"] =
[[
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="180" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.36" />
            <Property name="SlopeDensity" value="0.4" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
]]
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects","GcObjectSpawnData.xml","GcObjectSpawnData.xml","QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},1,
							["VALUE_CHANGE_TABLE"] =
							{
								{"OptionName",			"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MaxAngle",			"46"},
								{"MinScale",			"1.51"},
								{"MaxScale",			"1.52"},
								{"MinScaleY",			"0.751"},
								{"MaxScaleY",			"0.752"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.85"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},						
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.185"},
								{"FlatDensity",			"0.32"},
								{"SlopeDensity",		"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.185"},
								{"FlatDensity",			"0.32"},
								{"SlopeDensity",		"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},								
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","GcObjectSpawnDataVariant.xml",},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] =
[[
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.185" />
            <Property name="FlatDensity" value="0.32" />
            <Property name="SlopeDensity" value="0.36" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="180" />
            </Property>
          </Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},
							["ADD"] = [[            <Property name="Samplers" />]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","GcObjectSpawnDataVariant.xml",},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] =
[[
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.36" />
            <Property name="SlopeDensity" value="0.4" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="10" />
              <Property value="20" />
              <Property value="35" />
              <Property value="180" />
            </Property>
          </Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", 		 "1"},
								{"UseSeedValue", "True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlacementPriority",	"Low"},
								{"LargeObjectCoverage",	"AlwaysPlace"},								
								{"OverlapStyle",		"All"},
								{"MaxAngle",			"46"},
								{"MatchGroundColour",	"True"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.5"},
								{"ShearWindStrength",	"0.75"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},	
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
								{"FadeOutStartDistance","35"},
								{"FadeOutOffsetDistance","5"},
								{"FadeOutEndDistance",	"45"},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},							
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},		
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},		
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},		
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN","Seed","GcSeed.xml",},				
							["VALUE_CHANGE_TABLE"] =
							{
								{"Seed", "1"},
								{"UseSeedValue", "True"},							
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},						
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlacementPriority",	"Low"},
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"OverlapStyle",		"All"},
								{"MaxAngle",			"46"},
								{"MatchGroundColour",	"True"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.5"},
								{"ShearWindStrength",	"0.75"},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxImposterRadius",	"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},
								{"MaxImposterRadius",	"6"},
								{"FadeOutStartDistance","35"},
								{"FadeOutOffsetDistance","5"},
								{"FadeOutEndDistance",	"45"},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"8"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"25"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},
                            ["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},														
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},						
							["ADD"] = [[            <Property name="Samplers" />]],			
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.5"},								
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},							
								{"MaxImposterRadius",	"8"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},								
								{"MaxImposterRadius",	"6"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},	
                            ["INTEGER_TO_FLOAT"] = "FORCE",								
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},								
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+2",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+3",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+4",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:MaxScale",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale",MINSCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MaxScale",MAXSCALE_MULTIPLIER},
							}
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"Samplers",},														
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN","ProceduralTexture","TkProceduralTextureChosenOptionList.xml",},						
							["ADD"] = [[            <Property name="Samplers" />]],			
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"LargeObjectCoverage",	"AlwaysPlace"},
								{"MaxAngle",			"46"},
								{"MinScale",			"1.66"},
								{"MaxScale",			"1.67"},
								{"MinScaleY",			"0.7"},
								{"MaxScaleY",			"0.75"},
								{"SlopeScaling",		"1.1"},
								{"PatchEdgeScaling",	"0.5"},
								{"ShearWindStrength",	"0.75"},								
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},							
								{"MaxImposterRadius",	"8"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},							
                            ["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"6"},								
								{"MaxImposterRadius",	"6"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","LodDistances",},	
                            ["LINE_OFFSET"] = "+5",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,						
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml",},	
                            ["INTEGER_TO_FLOAT"] = "FORCE",								
							["VALUE_CHANGE_TABLE"] =
							{
								{"Coverage",			"0.21"},
								{"FlatDensity",			"0.36"},
								{"SlopeDensity",		"0.4"},
								{"SlopeMultiplier",		"1.1"},
								{"MaxRegionRadius",		"8"},
								{"MaxImposterRadius",	"8"},
								{"FadeOutStartDistance","80"},								
								{"FadeOutOffsetDistance","15"},
								{"FadeOutEndDistance",	"120"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+2",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"10"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+3",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"20"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+4",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"35"},				
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",},
							["SECTION_UP_SPECIAL"] = 1,	
							["PRECEDING_KEY_WORDS"] = {"QualityVariants","GcObjectSpawnDataVariant.xml","GcObjectSpawnDataVariant.xml","LodDistances",},							
                            ["LINE_OFFSET"] = "+5",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE",			"180"},				
							}
						},
					}
				},
			}
		}
	}
}