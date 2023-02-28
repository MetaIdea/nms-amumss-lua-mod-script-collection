NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BPG_LAS_Patch_Multi-Biome_v5.01.pak",
["MOD_AUTHOR"]				= "Lasagna - with trevix code (LUA implementation by Babscoole)",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = MULTI-BIOME/MOUNTAINS = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				--v3.1: HOUDINIPROPSOBJECTS = crash (they spawn in one small cluttered group on mountains), removed
				----------------------------------------------------------------------------------------------------------------------
				--------------Code originally by trevix/Babscoole in remainder of script below (*** = lasagna comment)----------------
				------------------------------["MOD_AUTHOR"] = "trevix", ["LUA_AUTHOR"] = "Babscoole",--------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
					
					
---------------------------------vvv Patch to increase Weight values that Lasagna modifies vvv-------------------------------------
					
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"12", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1.2", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1.25", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1.2", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.83", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.83", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1", }, --3.8
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"1", },
							}
						},
						
						--Others:
						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLESBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMABIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICROCKYBIOME.MXML",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Weight",	"0.5", },
							}
						},
						
						
---------------------------------^^^ Patch to increase Weight values that Lasagna modifies ^^^-------------------------------------
					
					
					
					

					
						{ --BPG Patch = From: METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVEBIOMESPARSETOXIC.MBIN to:
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMETOXICBUSHESFULL.MBIN",},
							["LINE_OFFSET"] = "+3",
							["ADD"] =
[[
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="UNDERGROUND" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Cave" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE43.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE44.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE45.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE46.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE47.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE48.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE49.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE50.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE51.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE52.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE53.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE54.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE55.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE56.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE57.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE58.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE59.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE60.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE61.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE62.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE63.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE64.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE65.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE66.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE67.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE68.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE69.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE70.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE71.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE72.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE73.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE74.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE75.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE76.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE77.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE78.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE79.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE80.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE81.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE82.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE83.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE84.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE85.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE86.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE87.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE88.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE89.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE90.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE91.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE92.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE93.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE94.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE95.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE96.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE97.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE98.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE99.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE100.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE101.MBIN" />
        </Property>
      </Property>
    </Property>
]]
						},

						{ --BPG Patch = From: METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERFULL.MBIN to:
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/GROUND/UNDERWATERCORAL.MBIN",},
							["LINE_OFFSET"] = "+3",
							["ADD"] =
[[
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="UNDERWATER" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Underwater" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSFULL3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHULTRAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYELBUBBLEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYCONTOUROBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSMID3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICTENTACLESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSMID3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENHQOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYHUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYHYDROGARDENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENPILLAROBJECTS3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSFULL3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBEAMSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBONESPIREOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYFRACTCUBEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYIRRISHELLSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYMSTRUCTOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSHARDSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYWIRECELLSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
      </Property>
    </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FROZEN.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYFROZEN.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FROZENWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYFROZENWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TOXIC.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYTOXIC.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TOXICWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYTOXICWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SCORCHED.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYSCORCHED.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SCORCHEDWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYSCORCHEDWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/RADIOACTIVE.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYRADIOACTIVE.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/RADIOACTIVEWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYRADIOACTIVEWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/BARREN.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYBARREN.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/BARRENWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYBARRENWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/LUSH.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYLUSH.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/LUSHWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYLUSHWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/ALLWILDFULL.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYALLWILDFULL.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/WEIRDWILD.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYWEIRDWILD.MBIN" />
            </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/PLANTLARGECROP.MBIN",},
							["LINE_OFFSET"] = "+1",
							["ADD"] =
[[
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMBIOMES/GHOSTLYPLANTLARGECROP.MBIN" />
            </Property>
]]
						},
						{
							["VALUE_MATCH"] 		= 2, 
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinFilesToChoose",	4},
							},
						},
						{
							["VALUE_MATCH"] 		= 2, 
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MaxFilesToChoose",	4},
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN",}, --"TileType","GcTerrainTileType.xml"
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "TileType",	"Base", }, --from "Mountain"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ROCK",}, --BPG PATCH: FROM CRYSTALSCAVE
							["LINE_OFFSET"] = "-4",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] = --WARNING: changes to this can make the game unstable!
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSOBJECTSDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITYFLOATINGISLANDS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY2GIANTFLOWERSFLOATINGISLANDS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY7STYLIZEDTREENORM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY8STYLIZEDTREENORM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY9STYLIZEDTREENORM3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY24CITYFLOATINGISLANDS3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY25CITYFLOATINGISLANDS4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="BEACH" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Underwater" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSOBJECTSDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITYFLOATINGISLANDS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY2GIANTFLOWERSFLOATINGISLANDS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY7STYLIZEDTREENORM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY8STYLIZEDTREENORM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY9STYLIZEDTREENORM3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY24CITYFLOATINGISLANDS3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY25CITYFLOATINGISLANDS4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="MOUNTAIN" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Mountain" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSOBJECTSDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITYFLOATINGISLANDS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY2GIANTFLOWERSFLOATINGISLANDS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY7STYLIZEDTREENORM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY8STYLIZEDTREENORM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY9STYLIZEDTREENORM3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY24CITYFLOATINGISLANDS3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY25CITYFLOATINGISLANDS4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]
						}
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = BARREN BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","True",},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = BARREN BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --False
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = FROZEN BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","True",},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = FROZEN BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --False
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = LAVA BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVABIOME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --BPG Patch: From True to False
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = LUSH BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIOME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","True",},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = RADIOACTIVE BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEBIOME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","True",},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = SCORCHED BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDBIOME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","True",},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY1CITY.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = SWAMP BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPBIOME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --This ones False!
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = TOXIC BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIOME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","True",},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" }
							}
						},
					}
				},
				----------------------------------------------------------------------------------------------------------------------
				-- = = = = = = = = = = = = = = = = = = = = = = = = = = ALL OTHER BIOMES = = = = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 2A------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLESBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMABIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICROCKYBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --These are false!
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY60.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY61.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY62.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY63.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY64.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY65.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY66.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY67.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY68.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY69.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY70.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY71.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY72.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY73.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY74.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY75.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY76.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY77.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY78.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY79.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY80.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY81.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY82.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY83.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY84.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY86.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY87.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY88.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY89.MBIN" />
        </Property>
]]				
						}
					} 
				}, 
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE