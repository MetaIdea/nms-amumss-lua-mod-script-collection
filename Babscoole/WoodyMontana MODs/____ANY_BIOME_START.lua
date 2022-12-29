NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "____ANY_BIOME_START.pak",
["MOD_AUTHOR"]    = "WoodyMontana",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{  
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{				
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
							["SPECIAL_KEY_WORDS"] = {"Biome", "Frozen"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Barren" />
    </Property>
]]
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
							["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] =
[[
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Lush" />
    </Property>
]]
						},
					}
				},				
			}
		},
	}	
}