local title = "_ForestRealm_Spawner_v1.0p.pak"


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= title,
["MOD_AUTHOR"]				= "AGhostlyPepper",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
			
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
					-- ["EXML_CHANGE_TABLE"] 	= 
					
					-- {
					
						-- -- { --Unnecessary
							-- -- ["REPLACE_TYPE"] 		= "", --Just first
							-- -- ["VALUE_MATCH"] 		= "True",
							-- -- ["VALUE_CHANGE_TABLE"] 	= 
							-- -- {						
								-- -- { "ChooseUsingLifeLevel",	"False" },
								-- -- { "AllowLimiting",			"False" },
							-- -- }
						-- -- },
					-- } 
				-- },

				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVABIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIOME.MBIN",
						
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLESBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMABIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICROCKYBIOME.MBIN",
						
						
						--
						
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGELUSH\HUGELUSHBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUVWPLANTBIOME.MBIN",
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLESBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRABIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDBIOME.MBIN",
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYWEIRDBIOME.MBIN",
						
						--
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENWEIRDBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADWATERBIOME.MBIN",
						--
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENINFESTEDBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLARBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDBIOME.MBIN",
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVERUINSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOINFESTEDBIOME.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHINFESTEDBIOME.MBIN",
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESBIOME.MBIN",


						--
						
						
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOURBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSBIOME.MBIN",

					},
					["EXML_CHANGE_TABLE"] 	= 
					
					{
					
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
							}
						},
							
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --These are false!
							["LINE_OFFSET"] = "1",
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] =
[[
      <Property name="Name" value="MAIN" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="1" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Base" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_1Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_2Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_3Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_4Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_5Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_6Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_7Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_8Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_9Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_10Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_11Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_12Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_13Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_14Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_15Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_16Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_17Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_18Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_19Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_20Z.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21A.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21B.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21C.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21D.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21E.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21F.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21G.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21H.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21I.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21J.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21K.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21L.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21M.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21N.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21O.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21P.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Q.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21R.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21S.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21T.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21U.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21V.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21W.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21X.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Y.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFOREST\GHOSTLYFORESTOBJECTS_21Z.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
]]				
						},
						
						
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",},
							["LINE_OFFSET"] = "1",
							["REMOVE"] = "SECTION",
						},
						
					}
				},
				
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE