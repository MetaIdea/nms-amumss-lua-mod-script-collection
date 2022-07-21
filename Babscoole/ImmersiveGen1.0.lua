ADD_BLANK =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcExternalObjectList">
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects" />
    <Property name="Landmarks" />
    <Property name="Objects" />
    <Property name="DetailObjects" />
    <Property name="SelectableObjects" />
  </Property>
</Data>
]]	

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ImmersiveGen 1.0.pak",
["MOD_AUTHOR"]    = "cruzdroid",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.93",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_PLANT_MED", "ID", "FUEL1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "OXYGEN"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_WATERPLANT_A", "ID", "FUEL1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "CATALYST1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_WATERPLANT_S", "ID", "WATERPLANT"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "CATALYST1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "8"},
								{"AmountMax", "16"}								
							}
						},							
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE", "Id","BP_SALVAGE",},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", "6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "4"},
								{"AmountMax", "12"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["SECTION_ACTIVE"] = {8},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "10"},
								{"AmountMax", "10"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "5"},
								{"AmountMax", "15"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "10"},
								{"AmountMax", "10"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_PIRATEBOARD_A", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMax", "18"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "FUEL2"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST1"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "200"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "AMMO"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "40"},
								{"AmountMax", "140"}						
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "VALUABLE_STUFF"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "550"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WORDSTONE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Active",      "False"},
								{"PatchSize",   "100000000"},
								{"RegionScale", "20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRATES"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "610"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "DEBRIS"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "425"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FUELCRYSTAL"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "400"},
								{"RegionScale", "15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUND"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "250"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "90"},
								{"RegionScale", "0.2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL2"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "250"},
								{"RegionScale", "0.2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL3"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "90"},
								{"RegionScale", "0.3"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RARE_BONES"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "275"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SCRAPHEAP"},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "685"},
								{"RegionScale", "1"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "10"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml", "QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "20"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml", },
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","WORDSTONE",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","WORDSTONE",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeDensity",    "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","CRATES",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0.02"},
								{"FlatDensity",     "0.05"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","CRATES",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0.002"},
								{"SlopeDensity",    "0.002"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeDensity",    "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0.02"},
								{"FlatDensity",     "0.05"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0.01"},
								{"MaxRegionRadius", "0"},
							}
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale", "10"},
								{"MaxScale", "10"},
								{"Coverage", "0"},
							}
						},					
					}
				},
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
	}
}