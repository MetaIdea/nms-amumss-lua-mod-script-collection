NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_SalvagedScrapsEverywhere",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "SalvagedScrapsEverywhere",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"CommonExternalObjectLists"},
              ["ADD_OPTION"] = "ADDendSECTION", 
              ["ADD"] =
[[
		<Property name="CommonExternalObjectLists" value="GcExternalObjectListOptions">
			<Property name="Name" value="EXTRA_SCRAPS" />
			<Property name="ResourceHint" value="" />
			<Property name="ResourceHintIcon" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="SeasonalProbabilityOverride" value="0" />
			<Property name="TileType" value="GcTerrainTileType">
				<Property name="TileType" value="Base" />
			</Property>
			<Property name="AllowLimiting" value="true" />
			<Property name="AddToFilenameHashmapWhenOptional" value="false" />
			<Property name="ChooseUsingLifeLevel" value="false" />
			<Property name="Options">
        <Property name="Options" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/PROCSALVAGE.MBIN" _index="0" />
      </Property>
			<Property name="Order" value="0" />
			<Property name="SuppressSpawn" value="false" />
		</Property>
		<Property name="CommonExternalObjectLists" value="GcExternalObjectListOptions">
			<Property name="Name" value="EXTRA_FOSSIL" />
			<Property name="ResourceHint" value="" />
			<Property name="ResourceHintIcon" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="SeasonalProbabilityOverride" value="0" />
			<Property name="TileType" value="GcTerrainTileType">
				<Property name="TileType" value="Base" />
			</Property>
			<Property name="AllowLimiting" value="true" />
			<Property name="AddToFilenameHashmapWhenOptional" value="false" />
			<Property name="ChooseUsingLifeLevel" value="false" />
			<Property name="Options">
        <Property name="Options" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/PROCBONES.MBIN" _index="0" />
      </Property>
			<Property name="Order" value="0" />
			<Property name="SuppressSpawn" value="false" />
		</Property>
]]
            },
          }
        },
      }
    }
  }
}