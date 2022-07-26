local modfilename = "Biomes.RoboticSpawns"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = "Robotic life forms spawn in more biomes and more often within Abandoned/Empty Systems."

--|-----------------------------------------------------------------------------------------
--| Probability / Scale Multiplier
--|-----------------------------------------------------------------------------------------

_Probability     = 0.6  --Original "0.1"
_Min_Scale       = 3    --Original "0.4"
_Max_Scale       = 12   --Original "3"

--|-----------------------------------------------------------------------------------------
--| Biome Archetypes
--|-----------------------------------------------------------------------------------------

_RobotBiomes = {
    "Lush",
    "Toxic",
    "Scorched",
    "Radioactive",
    "Frozen",
    "Barren",
    "Red",
    "Green",
    "Blue",
    "Swamp",
    "Lava",
    "Waterworld",
}

_AbandonedBiomes = {
    "AbandonedSystemSpecific"
}

--|-----------------------------------------------------------------------------------------
--| Format for initial BiomeSpecific Archetypes
--|-----------------------------------------------------------------------------------------

_RobotArchetypes =
[[
      <Property name="Archetypes" value="GcCreatureGenerationWeightedList.xml">
        <Property name="Ground">
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="ROBOT" />
          </Property>
        </Property>
        <Property name="Air" />
        <Property name="Cave" />
        <Property name="Water" />
      </Property>
]]

--|-----------------------------------------------------------------------------------------
--| Format changes for AbandonedSystemSpecific
--|-----------------------------------------------------------------------------------------

_RobotArchetypeSystem =
[[
    <Property name="Archetypes" value="GcCreatureGenerationWeightedList.xml">
      <Property name="Ground">
        <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
          <Property name="Weight" value="1" />
          <Property name="Archetype" value="ROBOT" />
        </Property>
      </Property>
      <Property name="Air" />
      <Property name="Cave" />
      <Property name="Water" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                    --|-----------------------------------------------------------------------------------------
                    --| Creature Generation Data MBIN
                    --|-----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"EmptySystemSpecific", "GcCreatureGenerationOptionalWeightedList.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Probability",     _Probability},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"AbandonedSystemSpecific", "GcCreatureGenerationOptionalWeightedList.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Probability",     _Probability},
                            }
                        },
                    }
                },
                    --|-----------------------------------------------------------------------------------------
                    --| Creature Data Table MBIN
                    --|-----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "ROBOTANTELOPE", "HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureRoleFrequencyModifier",     "High"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "ROBOTANTELOPE"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinScale",        _Min_Scale}, --Original "0.4"
                                {"MaxScale",        _Max_Scale}, --Original "3"
                            }
                        },
                    }
                },
                    --|-----------------------------------------------------------------------------------------
                    --| Ground Table Robot MBIN
                    --|-----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureActiveTime",  "AnyTime"},
                                {"ProbabilityOfBeingEnabled", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ForceID", "ROBOTANTELOPE"},
                            ["PRECEDING_KEY_WORDS"] = {"MinSize"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureSizeClass",    "Large"}, --Original "Medium"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ForceID", "ROBOTANTELOPE"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSize"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureSizeClass",     "Huge"}, --Original "Medium"
                            }
                        },
                    }
                },
            }
        },
    }
}

local CreatureGenerationData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

--|-----------------------------------------------------------------------------------------
--| Add Robots To RobotBiomes List
--|-----------------------------------------------------------------------------------------

for i = 1, #_RobotBiomes do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_RobotBiomes[i], "GcCreatureGenerationOptionalWeightedList.xml", "Archetypes", "GcCreatureGenerationWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["REMOVE"]              = "SECTION",
    }
end
for j = 1, #_RobotBiomes do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_RobotBiomes[j], "GcCreatureGenerationOptionalWeightedList.xml", "OverrideAllDomains", "True"},
        ["SECTION_ACTIVE"]      = {1,},
        ["ADD_OPTION"]          = "ADDafterLINE",
        ["ADD"]                 = _RobotArchetypes,
    }
end

--|-----------------------------------------------------------------------------------------
--| Add Robot To AbandonedSystemSpecific
--|-----------------------------------------------------------------------------------------

for i = 1, #_AbandonedBiomes do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_AbandonedBiomes[i], "GcCreatureGenerationOptionalWeightedList.xml", "Archetypes", "GcCreatureGenerationWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["REMOVE"]              = "SECTION"
    }
end
for j = 1, #_AbandonedBiomes do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_AbandonedBiomes[j], "GcCreatureGenerationOptionalWeightedList.xml", "OverrideAllDomains", "True"},
        ["SECTION_ACTIVE"]      = {1,},
        ["ADD_OPTION"]          = "ADDafterLINE",
        ["ADD"]                 = _RobotArchetypeSystem
    }
end