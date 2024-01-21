dofile([[OBE_methods.lua]])

DENSITY_MULTIPLIER = 0.5

SETTINGS = {
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MBIN", 
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMABIOME.MBIN",
				["SUFFIX"] = "RMA"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBBIOME.MBIN",
				["SUFFIX"] = "RMB"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			}
		}
	},
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIOME.MBIN",
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESBIOME.MBIN",
				["SUFFIX"] = "SPR"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSBIOME.MBIN",
				["SUFFIX"] = "EGG"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			}
		},
	},
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDBIOME.MBIN",
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEBIOME.MBIN",
				["SUFFIX"] = "SHT"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALBIOME.MBIN",
				["SUFFIX"] = "CRL"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			},
		},
	},
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWBIOME.MBIN",
				["SUFFIX"] = "GLW"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVERUINSBIOME.MBIN",
				["SUFFIX"] = "RUN"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSBIOME.MBIN",
				["SUFFIX"] = "SPK"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			},
		},
	},
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MBIN",
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLARBIOME.MBIN",
				["SUFFIX"] = "PLR"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			},
		},
	},
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQBIOME.MBIN",
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESBIOME.MBIN",
				["SUFFIX"] = "HVS"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALBIOME.MBIN",
				["SUFFIX"] = "CRL"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			},
		},
	},
	{
		["SOURCE_BIOME"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIOME.MBIN",
		["NON_PROC_BIOMES"] = {
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESBIOME.MBIN",
				["SUFFIX"] = "HVS"
			},
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALBIOME.MBIN",
				["SUFFIX"] = "CRL"
			},
			
			{
				["BIOME_FILE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDBIOME.MBIN",
				["SUFFIX"] = "INF"
			},
		},
	},
}

MBIN_CHANGE_TABLE = {}
for _, setting in ipairs(SETTINGS) do
	source_landmarks_file_table = getObjectsFileList(setting["SOURCE_BIOME"],"MAIN_LMK")
	for _, source_landmarks_file in ipairs(source_landmarks_file_table) do
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] = {source_landmarks_file},
			["EXML_CHANGE_TABLE"] = {
				{
					["PRECEDING_KEY_WORDS"] = {"Landmarks"},
					["SEC_SAVE_TO"] = "ProcLandmarks"
				},
				{
					["SEC_EDIT"] = "ProcLandmarks",
					["REMOVE"] = "HBOS",
					}
				},
				{
					["SEC_EDIT"] = "ProcLandmarks",
					["MATH_OPERATION"] = "*",
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"FlatDensity",DENSITY_MULTIPLIER},
						{"SlopeDensity",DENSITY_MULTIPLIER},
					}
				}
			})
		for _, non_proc_biome in ipairs(setting["NON_PROC_BIOMES"]) do
			target_biome = non_proc_biome["BIOME_FILE"]
			target_landmarks_file = getObjectsFileList(target_biome,"MAIN_LMK")[1]
			new_landmarks_file = string.gsub(source_landmarks_file,".MBIN",non_proc_biome["SUFFIX"]..".MBIN")
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {{target_landmarks_file,new_landmarks_file}},
			})
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {new_landmarks_file},
				["EXML_CHANGE_TABLE"] = {
					{
						["INTEGER_TO_FLOAT"] = "FORCE",
						["MATH_OPERATION"] = "*",
						["REPLACE_TYPE"] = "ALL",
						["VALUE_CHANGE_TABLE"] = {
							{"FlatDensity",DENSITY_MULTIPLIER},
							{"SlopeDensity",DENSITY_MULTIPLIER},
						}
					},
					{
						["PRECEDING_KEY_WORDS"] = {"Landmarks"},
						["SEC_ADD_NAMED"] = "ProcLandmarks"
					}
				}
			})
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {target_biome},
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name","MAIN_LMK"},
						["PRECEDING_KEY_WORDS"] = {"Options"},
					["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="]]..new_landmarks_file..[[" />
        </Property>]]
					}
				}
			})
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MOD_DESCRIPTION"] = "Adds more Landmark variations to the non-procedural biome subtypes (such as Toxic Eggs, Lushroom)",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}