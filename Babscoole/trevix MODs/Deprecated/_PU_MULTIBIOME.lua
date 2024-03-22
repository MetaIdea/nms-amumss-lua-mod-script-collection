NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_PU_MULTIBIOME.pak",
["MOD_AUTHOR"]    = "trevix",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.68",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN"},
                        --    ["LINE_OFFSET"] = "-4",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "IGNORE"}
                            },
                            ["ADD"] =
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
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN" />
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
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HOUDINIPROPS/HOUDINIPROPSOBJECTS.MBIN" />
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
      <Property name="AllowLimiting" value="True" />
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
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN" />
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
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HOUDINIPROPS/HOUDINIPROPSOBJECTS.MBIN" />
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
]]
                        }
                    }
                },
            }
        },
    }
}