NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_XSS_MAIN_Increased_Variety.pak",
["MOD_AUTHOR"]    = "Xodarap777",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.29",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FISH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinCount",            "18"},
                                {"MaxCount",            "30"},
                                {"SwarmMovementRadius", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BIRD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",            "1"},
                                {"SwarmMovementSpeed",  "10"},
                                {"SwarmMovementRadius", "900"},
                                {"Coherence",           "0.2"},
                                {"Alignment",           "0.3"},
                                {"Follow",              "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGSNAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",            "5"},
                                {"MaxScale",            "7"},
                                {"MinCount",            "4"},
                                {"MaxCount",            "6"},
                                {"SwarmMovementRadius", "900"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGLIZARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",            "1"},
                                {"MaxScale",            "3"},
                                {"SwarmMovementSpeed",  "4"},
                                {"SwarmMovementRadius", "1200"},
                                {"Coherence",           "0.3"},
                                {"Alignment",           "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGBEETLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwarmMovementRadius", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHARK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",            "2"},
                                {"SwarmMovementSpeed",  "1"},
                                {"SwarmMovementRadius", "400"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",            "0.2"},
                                {"MaxScale",            "0.4"},
                                {"MinCount",            "5"},
                                {"MaxCount",            "12"},
                                {"SwarmMovementRadius", "5"},
                                {"Alignment",           "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMCOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "4"},
                                {"MaxCount",            "3"},
                                {"SwarmMovementRadius", "120"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREROLEDESCRIPTIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLESPARSE.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLEDEAD.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLECOMMON.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLEBUSY.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLEGIANT.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLEPREDATORS.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLESMALLPREDATORS.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLEPREHISTORIC.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/CAVE/CAVETABLECOMMON.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/CAVE/CAVETABLEEMPTY.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/AIR/AIRTABLEDEAD.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/AIR/AIRTABLECOMMON.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/AIR/AIRTABLECOMMONLIZARD.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/AIR/AIRTABLECOMMONSNAKE.MBIN"},
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/AIR/AIRTABLEFLYINGLIZARDONLY.MBIN"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Full", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/AIR/AIRTABLEFLYINGSNAKESONLY.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Full", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RoleFrequencyModifiers"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0.1"},
                                {"IGNORE", "3"},
                                {"IGNORE", "20"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBUSY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize",       "22"},
                                {"MaxGroupSize",       "34"},
                                {"CreatureActiveTime", "AnyTime"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", "12"},
                                {"MaxGroupSize", "24"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize",              "1"},
                                {"MaxGroupSize",              "3"},
                                {"CreatureActiveTime",        "AnyTime"},
                                {"ProbabilityOfBeingEnabled", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureActiveTime", "AnyTime"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureActiveTime", "AnyTime"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Bird" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="FlyingSnake" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.2" />
      <Property name="IncreasedSpawnDistance" value="1" />
      <Property name="Filter" value="" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityOfBeingEnabled", "1"},
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize",           "24"},
                                {"MaxGroupSize",           "38"},
                                {"IncreasedSpawnDistance", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml", "GcCreatureRoleDescription.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize",           "12"},
                                {"MaxGroupSize",           "14"},
                                {"IncreasedSpawnDistance", "1"},
                            }
                        },
                    }
                },
            }
        }
    }
}