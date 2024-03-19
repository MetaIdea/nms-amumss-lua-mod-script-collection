NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "__BPG_LUSH_START.pak",
["MOD_AUTHOR"]    = "WoodyMontana",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.25",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
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
                            ["PRECEDING_KEY_WORDS"] = {"Lush", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/CLASSICLUSHBIOME.MXML" />
          <Property name="Weight" value="8" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/SUPERLUSHBIOME.MXML" />
          <Property name="Weight" value="6" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQBIOME.MXML"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "0.25"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMABIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLESBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML"},--
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICROCKYBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICINFESTEDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHINFESTEDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOINFESTEDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLARBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENINFESTEDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDBIOME.MXML"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "0.5"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSBIOME.MXML"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADFROZENBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADFROZENWEIRDBIOME.MXML"},
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSBIOME.MXML"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "1"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxic", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/CLASSICTOXICBIOME.MXML" />
          <Property name="Weight" value="8" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/SUPERTOXICBIOME.MXML" />
          <Property name="Weight" value="6" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scorched", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/CLASSICSCORCHEDBIOME.MXML" />
          <Property name="Weight" value="8" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SUPERSCORCHEDBIOME.MXML" />
          <Property name="Weight" value="6" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radioactive", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/CLASSICRADIOACTIVEBIOME.MXML" />
          <Property name="Weight" value="8" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/SUPERRADIOACTIVEBIOME.MXML" />
          <Property name="Weight" value="6" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVERUINSBIOME.MXML"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Frozen", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/CLASSICFROZENBIOME.MXML" />
          <Property name="Weight" value="8" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/SUPERFROZENBIOME.MXML" />
          <Property name="Weight" value="6" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Barren", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/CLASSICBARRENBIOME.MXML" />
          <Property name="Weight" value="8" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/SUPERBARRENBIOME.MXML" />
          <Property name="Weight" value="6" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Dead", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Beam" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/CLASSICDEADBIOME.MXML" />
          <Property name="Weight" value="4" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="FractCube" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/CLASSICDEADFROZENBIOME.MXML" />
          <Property name="Weight" value="4" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/SUPERDEADBIOME.MXML" />
          <Property name="Weight" value="3" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/SUPERDEADFROZENBIOME.MXML" />
          <Property name="Weight" value="3" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Red", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/SUPERFROZENBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/SUPERLUSHBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="FractCube" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/SUPERRADIOACTIVEBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Bubble" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SUPERSWAMPBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shards" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/SUPERTOXICBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Contour" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/SUPERBARRENBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shell" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/SUPERLAVABIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="BoneSpire" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SUPERSCORCHEDBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Green", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/SUPERFROZENBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/SUPERLUSHBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="FractCube" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/SUPERRADIOACTIVEBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Bubble" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SUPERSWAMPBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shards" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/SUPERTOXICBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Contour" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/SUPERBARRENBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shell" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/SUPERLAVABIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="BoneSpire" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SUPERSCORCHEDBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Blue", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/SUPERFROZENBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/SUPERLUSHBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="FractCube" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/SUPERRADIOACTIVEBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Bubble" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SUPERSWAMPBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shards" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/SUPERTOXICBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Contour" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/SUPERBARRENBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shell" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/SUPERLAVABIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="BoneSpire" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SUPERSCORCHEDBIOME.MXML" />
          <Property name="Weight" value="2" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Swamp", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="HydroGarden" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/CLASSICSWAMPBIOME.MXML" />
          <Property name="Weight" value="4" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SUPERSWAMPBIOME.MXML" />
          <Property name="Weight" value="3" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Lava", "FileOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Structure" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/TESTBIOME.MXML" />
          <Property name="Weight" value="0" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MXML"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="HydroGarden" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/CLASSICLAVABIOME.MXML" />
          <Property name="Weight" value="4" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Hexagon" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/SUPERLAVABIOME.MXML" />
          <Property name="Weight" value="3" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Biome", "Scorched"},
                                {"Biome", "Radioactive"},
                                {"Biome", "Frozen"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Lush"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUND"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SeasonalProbabilityOverride", "0"},
                                {"AllowLimiting",               "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUND"},
                            ["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUND", "ChooseUsingLifeLevel", "False"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEEGGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEEGGSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEEGGSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEFULLGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGLOWBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGLOWBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGRASSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGRASSBUSHESALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGRASSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGRASSBUSHESFULLGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEGRASSBUSHESGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEMUTANT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEMUTANTBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEMUTANTBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEPLANTSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEPLANTSBUSHESALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMEPLANTSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESHROOMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESHROOMSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESHROOMSBUSHESALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESHROOMSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSEEGGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSEGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSEMUTANT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSEPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSESHROOMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSESPORES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSETOXIC.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPARSETOXICGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPORES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPORESBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMESPORESBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMETOXIC.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMETOXICBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/MAIN/CAVEBIOMETOXICBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEEGGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEEGGSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEEGGSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEFULLGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGLOWBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGLOWBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGRASSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGRASSBUSHESALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGRASSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGRASSBUSHESFULLGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEGRASSBUSHESGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEMUTANT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEMUTANTBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEMUTANTBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEPLANTSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEPLANTSBUSHESALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMEPLANTSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESHROOMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESHROOMSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESHROOMSBUSHESALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESHROOMSBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSEEGGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSEGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSEMUTANT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSEPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSESHROOMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSESPORES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSETOXIC.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPARSETOXICGLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPORES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPORESBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMESPORESBUSHESFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMETOXIC.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMETOXICBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/FULL/CAVEBIOMETOXICBUSHESFULL.MBIN" />
        </Property>
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERWATER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SeasonalProbabilityOverride", "0"},
                                {"AllowLimiting",               "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERWATER"},
                            ["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERWATER", "ChooseUsingLifeLevel", "False"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/FULL/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/HIGH/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/MID/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/LOW/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE/DEAD/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/FULL/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/HIGH/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/MID/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/LOW/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE2/DEAD/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/FULL/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/HIGH/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/MID/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/LOW/WATERTUBES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATER.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERALT.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERCORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERMONOLITHS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERPLATFORMS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERSPIKES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/CORE3/DEAD/WATERTUBES.MBIN" />
        </Property>
      </Property>
    </Property>
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
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/GROUND/UNDERWATERPLANTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/GROUND/UNDERWATERMIXED.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/GROUND/UNDERWATERCORAL.MBIN" />
        </Property>
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MOUNTAIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SeasonalProbabilityOverride", "0"},
                                {"AllowLimiting",               "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MOUNTAIN"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="ROCK" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Rock" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/ROCK.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/ROCKALT.MBIN" />
        </Property>
      </Property>
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTALSCAVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SeasonalProbabilityOverride", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTALSCAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTALSCAVE", "ChooseUsingLifeLevel", "False"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/CAVEFULL.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="RESOURCES" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="0.3" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Base" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RESOURCES/DEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RESOURCES/LOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RESOURCES/MID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RESOURCES/FULL.MBIN" />
        </Property>
      </Property>
    </Property>
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="TEST" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="0" />
      <Property name="SeasonalProbabilityOverride" value="0" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Base" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/TEST/TEST.MBIN" />
        </Property>
      </Property>
]]
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Id", "VALUABLE_STUFF"},
                                -- {"Id", "STORMCRYSTALS"},
                            -- },
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"ForceOnSeasonStart", "False"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "PROC_SALVAGE"},
                                -- {"Name", "PROC_BONES"},
                                -- {"Name", "WATER_HAZ"},
                                -- {"Name", "CAVECUBES"},
                                -- {"Name", "CAVEEGGS"},
                                -- {"Name", "CLAM"},
                                -- {"Name", "TENTACLE"},
                                -- {"Name", "GEMS"},--
                                -- {"Name", "PHYSICSSPOREPRO"},
                                -- {"Name", "FLOATINGPROPS"},
                                -- {"Name", "RARECRYSTALPROP"},
                                -- {"Name", "PROXIMITY"},
                                -- {"Name", "URCHIN"},
                                -- {"Name", "METAL"},
                                -- {"Name", "PHYSICS"},
                                -- {"Name", "FARMSNOW"},
                                -- {"Name", "WILDSNOW"},
                                -- {"Name", "FARMTOXIC"},
                                -- {"Name", "WILDTOXIC"},
                                -- {"Name", "FARMSCORCHED"},
                                -- {"Name", "WILDSCORCH"},
                                -- {"Name", "FARMRADIOACTIVE"},
                                -- {"Name", "WILDRADIO"},
                                -- {"Name", "FARMBARREN"},
                                -- {"Name", "WILDBARREN"},
                                -- {"Name", "FARMLUSH"},
                                -- {"Name", "WILDLUSH"},
                                -- {"Name", "ALLWILDFULL"},
                                -- {"Name", "NAVDATA"},
                                -- {"Name", "RAREROCKS"},
                                -- {"Name", "PLANTCROP"},
                                -- {"Name", "FIENDEGGS"},
                                -- {"Name", "CRYSTALPROPS"},
                                -- {"Name", "BURIED_EXTRAS"},
                            -- },
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"SeasonalProbabilityOverride", "0"},
                                -- {"AllowLimiting",               "False"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Name", "WILDWEIRD"},
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"SeasonalProbabilityOverride", "0"},
                                -- {"AllowLimiting",               "False"},
                            -- }
                        -- },
                    }
                },
            }
        },
    }
}