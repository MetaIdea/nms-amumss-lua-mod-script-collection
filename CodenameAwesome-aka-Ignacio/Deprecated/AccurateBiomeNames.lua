NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.AccurateBiomeNames.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Changes biome names like 'Viridescent' and 'Tropical' to just say 'Lush' or their respective biome type. No more fake variation for planet types.",
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LUSH10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Lush %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCORCHED10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Scorched %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FROZEN10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Frozen %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRADIATED10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Radioactive %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TOXIC10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Toxic %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARREN10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Barren %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DEAD10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Dead %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WIRECELLSBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Wire Cell %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WIRECELLSBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Wire Cell %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WIRECELLSBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Wire Cell %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CONTOURBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Contour %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CONTOURBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Contour %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CONTOURBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Contour %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BONESPIREBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Bone Spire %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BONESPIREBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Bone Spire %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BONESPIREBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Bone Spire %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRISHELLSBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Irri Shells %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRISHELLSBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Irri Shells %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","IRRISHELLSBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Irri Shells %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HYDROGARDENBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Hydro Garden %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HYDROGARDENBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Hydro Garden %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HYDROGARDENBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Hydro Garden %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MSTRUCTBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "M Structure %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MSTRUCTBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "M Structure %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MSTRUCTBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "M Structure %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BEAMSBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Beams %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BEAMSBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Beams %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BEAMSBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Beams %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HEXAGONBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Hexagon %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HEXAGONBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Hexagon %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HEXAGONBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Hexagon %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FRACTCUBEBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Fract Cube %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FRACTCUBEBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Fract Cube %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FRACTCUBEBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Fract Cube %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BUBBLEBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Bubble %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BUBBLEBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Bubble %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BUBBLEBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Bubble %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SHARDSBIOME1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Shards %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SHARDSBIOME2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Shards %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SHARDSBIOME3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Shards %PLANETCLASS%"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR5"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR8"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEATHER_CLEAR10"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Value", "Clear"}
							},
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
