NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_Multi-Biome_LessDensity_v6.21.pak",
["MOD_AUTHOR"]				= "aghostlypepper (aka Lasagna) - with trevix code (LUA implementation by Babscoole)",
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
						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVEBIOMESPARSETOXIC.MBIN",},
							["LINE_OFFSET"] = "+3",
							["ADD"] =
[[
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="UNDERGROUND" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="1" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Cave" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE46.MBIN" />
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
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE78.MBIN" />
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
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE100.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/CAVE/GHOSTLYCAVE101.MBIN" />
        </Property>
      </Property>
    </Property>
]]
						},

						{
							["SPECIAL_KEY_WORDS"] = {"Value","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERFULL.MBIN",},
							["LINE_OFFSET"] = "+3",
							["ADD"] =
[[
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="UNDERWATER" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="1" />
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
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYELBUBBLEOBJECTSDEAD.MBIN" />
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
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYCONTOUROBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSMID.MBIN" />
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
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKEPOTATOOBJECTS.MBIN" />
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
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSLOW.MBIN" />
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
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALSCAVE",},
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="BEACH" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="0.15" />
      <Property name="SeasonalProbabilityOverride" value="1" />
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="MOUNTAIN" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="0.15" />
      <Property name="SeasonalProbabilityOverride" value="1" />
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="MOUNTAIN" />
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
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD5.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD6.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD7.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD8.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD9.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD10.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD11.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD12.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD13.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD14.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD15.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD16.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD17.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD18.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD19.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD20.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD21.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD22.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD23.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD24.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD25.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD41.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD42.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD51.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD5.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD6.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD7.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD8.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD9.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD10.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD11.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD12.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD13.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD14.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD15.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD16.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD17.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD18.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD19.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD20.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD21.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD22.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD23.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD24.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD25.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD41.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD42.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD51.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD59.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="MOUNTAIN" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="0.7" />
      <Property name="SeasonalProbabilityOverride" value="1" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Mountain" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD5.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD6.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD7.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD8.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD9.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD10.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD11.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD12.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD13.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD14.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD15.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD16.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD17.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD18.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD19.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD20.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD21.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD22.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD23.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD24.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD25.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD41.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD42.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD51.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD5.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD6.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD7.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD8.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD9.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD10.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD11.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD12.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD13.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD14.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD15.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD16.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD17.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD18.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD19.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD20.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD21.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD22.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD23.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD24.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD25.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD41.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD42.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD51.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD59.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="BEACH" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="0.3" />
      <Property name="SeasonalProbabilityOverride" value="1" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Underwater" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD5.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD6.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD7.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD8.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD9.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD10.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD11.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD12.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD13.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD14.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD15.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD16.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD17.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD18.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD19.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD20.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD21.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD22.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD23.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD24.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD25.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD41.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD42.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD51.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD4.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD5.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD6.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD7.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD8.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD9.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD10.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD11.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD12.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD13.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD14.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD15.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD16.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD17.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD18.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD19.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD20.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD21.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD22.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD23.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD24.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD25.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD26.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD27.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD28.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD29.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD30.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD31.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD32.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD33.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD34.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD35.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD36.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD40.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD41.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD42.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD43.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD44.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD45.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD46.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD47.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD48.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD49.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD50.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD51.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD52.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD53.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD54.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD55.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD56.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD57.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD59.MBIN" />
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
							}
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
							}
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", 
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN" />
        </Property>
]]				
						},
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
							}
						},
					} 
				}, 
				
				----------------------------------------------------------------------------------------------------------------------
				--= = = = = = = = = = = = = = = = = = = = = = = OTHERS - CHANGE LIFE LEVEL = = = = = = = = = = = = = = = = = = = = = =
				----------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	=
					{
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
						
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSBIOME.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIOME.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENBIOME.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENWEIRDBIOME.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADWATERBIOME.MBIN",
						
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
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW90.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW91.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW92.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW93.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW94.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW95.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW96.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW97.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW98.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW99.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW100.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW101.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW102.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW103.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW104.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW105.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW106.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLYNEW107.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN" />
        </Property>
]]
						},
					},

					
					{
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
							}
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	=
					{

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
							["SPECIAL_KEY_WORDS"] = {"ChooseUsingLifeLevel","False",}, --These are false!
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	"IGNORE",}
							},
							["ADD"] =
[[
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY59.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY58.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY48.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSFULL3.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="CUSTOMBIOMES\GHOSTLY85.MBIN" />
        </Property>
]]				
						},
					},
					
					{
						{
							["REPLACE_TYPE"] 		= "", --Just first
							["VALUE_MATCH"] 		= "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "ChooseUsingLifeLevel",	"False" },
								{ "AllowLimiting",			"False" },
							}
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