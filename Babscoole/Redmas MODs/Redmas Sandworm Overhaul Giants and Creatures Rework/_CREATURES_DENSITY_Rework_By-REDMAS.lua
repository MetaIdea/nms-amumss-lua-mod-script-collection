NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_CREATURES_DENSITY_Rework_By-REDMAS.pak",
["MOD_AUTHOR"]    = "Redmas",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.99",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_PETS","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_ROBEETLE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_BUTTERFLOCK","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_MOLE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_SMALLBIRD","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_BUTTERFLY","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_BEETLE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_DIGGERS","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_DRILL","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_PLOUGH","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_PROTOFLYER","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_PROTOROLLER","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_PROTODIGGER","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WRDFLOAT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WRDROLL","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WRDCRYSTAL","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WRDBUTTERFLY","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WRDROLLPRED","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WRDCRYSTALPRED","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BONE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BUTTERFLY","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN","DensityModifier","GcCreatureGenerationDensity.xml",},
							--["SECTION_ACTIVE"] = {1,2,},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN",},
							--["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ChanceOfHemisphereLimit", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DANGEROUS","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HERD","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HUNTEDHERD","DensityModifier","GcCreatureGenerationDensity.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PARADISE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["SECTION_ACTIVE"] = {1,2,},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PARADISE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PARADISE",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ChanceOfHemisphereLimit", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GIANT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["SECTION_ACTIVE"] = {1,3,4,},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Id","GIANT",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ChanceOfHemisphereLimit", "0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GroundArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","BUSY","DensityModifier","GcCreatureGenerationDensity.xml",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_ACTIVE"] = {1,4,5,},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Sparse"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GroundArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","BUSY","DensityModifier","GcCreatureGenerationDensity.xml",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_ACTIVE"] = {2,3,},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Normal"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GroundArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","BUSY",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ChanceOfHemisphereLimit", "0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AirArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BIGBIRDS","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FLYINGSNAKE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FLYINGLIZARD","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ONLYSNAKE","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ONLYLIZARD","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AirArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","BUSY","DensityModifier","GcCreatureGenerationDensity.xml",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_JELLYFISH","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_FLOCKSHARK","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","T_FLOCK3","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WaterArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WaterArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ChanceOfHemisphereLimit", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CRABS","DensityModifier","GcCreatureGenerationDensity.xml",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CaveArchetypes",},
							["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT","DensityModifier","GcCreatureGenerationDensity.xml",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Density", "Dense"},
							}
						},
					},
				},
			},
		},
	},
}