local modfilename = "Biomes.RoboticSpawnsPlus"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "4.33"
local description = [[
Robotic life forms spawn in more biomes. Trying again to allow Robot Antelope to
spawn in other biomes other than Empty Systems without impacting the fauna within
those additional biomes.
]]

--|-------------------------------------------------------------------------------------------------------
--| Probability / Scale Multiplier
--|-------------------------------------------------------------------------------------------------------
--  Do NOT exceed 0.1 for _Robot_Probability if multi-biomes exist in the lists below. Higher
--  probabilities directly effect the other fauna spawning correctly, especially on Anomaly
--  planets where there is only one spawned fauna. So, we're going to provide a much lower
--  probability across the given biomes ensuring we don't override the base fauna.

--Robot Antelopes
_Robot_Probability = 0.1  --Original "0.1"

--Scale Settings
_Minimum_Scale     = 0.3  --Original "0.4"
_Maximum_Scale     = 12.0 --Original "3"

_Minimum_Scale_Fur = 0.4
_Maximum_Scale_Fur = 10.6

_MinScale_Variance = 2    --Original "0"
_MaxScale_Variance = 4    --Original "0"

--|-------------------------------------------------------------------------------------------------------
--| Biome Archetypes
--|-------------------------------------------------------------------------------------------------------

--  Can restrict biomes here. Frozen, to me, seems to be the most likely candidate for these fauna.
--  You decide for yourself which biomes you would like to encounter the Robot Antelopes in. Adjust
--  the lists below (remove or comment out with double dash: --).

_BiomeSpecific =
{
    "Lush",
    "Toxic",
    "Scorched",
    "Radioactive",
    "Frozen",
    "Barren",
    "Weird",
    "Red",
    "Green",
    "Blue",
    "Swamp",
    "Lava",
    "Waterworld"
}

_SubBiomeSpecific =
{
    "Standard",
    "HighQuality",
    "HugePlant",
    "HugeLush",
    "HugeRing",
    "HugeRock",
    "HugeScorch",
    "HugeToxic",
    "Variant_A",
    "Variant_B",
    "Variant_C",
    "Variant_D",
    "Infested",
    "Swamp",
    "Lava"
}

_AbandonedBiomes = {
    "AbandonedSystemSpecific"
}

_EmptySystemSpecific = {
    "EmptySystemSpecific"
}

--|-------------------------------------------------------------------------------------------------------
--| Format for initial BiomeSpecific Archetypes
--|-------------------------------------------------------------------------------------------------------

_RemoveLineOffset = "+14"

_RobotArchetypes =
[[
      <Property name="Probability" value="]].._Robot_Probability..[[" />
      <Property name="OverrideAllDomains" value="True" />
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
      </Property>]]

--|-------------------------------------------------------------------------------------------------------
--| Format changes for AbandonedSystemSpecific
--|-------------------------------------------------------------------------------------------------------

_RobotArchetypeSystem =
[[
  <Property name="AbandonedSystemSpecific" value="GcCreatureGenerationOptionalWeightedList.xml">
    <Property name="Probability" value="]].._Robot_Probability..[[" />
    <Property name="OverrideAllDomains" value="True" />
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
                    --|-------------------------------------------------------------------------------------------------------
                    --| Creature Generation Data MBIN
                    --|-------------------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        --Place Holder
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"EmptySystemSpecific", "GcCreatureGenerationOptionalWeightedList.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Probability",     _Robot_Probability}, --Original "0.1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"AbandonedSystemSpecific", "GcCreatureGenerationOptionalWeightedList.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Probability",     _Robot_Probability},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------------------------------------------
                    --| Creature Data Table MBIN
                    --|-------------------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {   --For Robotic Antelopes
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "ROBOTANTELOPE"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinScale",                    _Minimum_Scale}, --Original "0.4"
                                {"MaxScale",                    _Maximum_Scale}, --Original "3"
                                {"FurLengthModifierAtMinScale", _Minimum_Scale_Fur},
                                {"FurLengthModifierAtMaxScale", _Maximum_Scale_Fur},
                            }
                        },
                        {   --For Robotic Antelopes
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "ROBOTANTELOPE"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"OnlySpawnWhenIdIsForced", "False"},
                            }
                        },
                            -- Rarity Types: Common, UnCommon, Rare, SuperRare
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE","RarityOverride","GcCreatureRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRarity", "Common"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE","Rarity","GcCreatureRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRarity", "Common"},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------------------------------------------
                    --| Ground Table Robot MBIN
                    --|-------------------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["MATH_OPERATION"]      = "+",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IncreasedSpawnDistance",          "1"}, --Original "1"
                                {"MinScaleVariance", _MinScale_Variance}, --Original "0"
                                {"MaxScaleVariance", _MaxScale_Variance}, --Original "0"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Role", "GcCreatureRoles.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureRole",        "Passive"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ActiveTime", "GcCreatureActiveTime.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureActiveTime",  "AnyTime"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ProbabilityOfBeingEnabled", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ForceID", "ROBOTANTELOPE"},
                            ["PRECEDING_KEY_WORDS"] = {"MinSize"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureSizeClass", "Large"}, --Original "Medium"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ForceID", "ROBOTANTELOPE"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSize"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureSizeClass", "Huge"}, --Original "Medium"
                            }
                        },
                    }
                },
            }
        },
    }
}

local CreatureGenerationData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

--|-------------------------------------------------------------------------------------------------------
--| Add Robots To RobotBiomes List
--|-------------------------------------------------------------------------------------------------------

for i = 1, #_BiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_BiomeSpecific[i], "GcCreatureGenerationOptionalWeightedList.xml", "Archetypes", "GcCreatureGenerationWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["REMOVE"]              = "SECTION",
    }
end

for j = 1, #_BiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_BiomeSpecific[j], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["ADD_OPTION"]          = "ADDafterLINE",
        ["ADD"]                 = _RobotArchetypes,
    }
end

--| Remove Left Over Sections

for i = 1, #_BiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["PRECEDING_FIRST"]     = "TRUE",
        ["SPECIAL_KEY_WORDS"]   = {_BiomeSpecific[i], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["PRECEDING_KEY_WORDS"] = {"BiomeSpecific"},
        ["LINE_OFFSET"]         = _RemoveLineOffset,
        ["REMOVE"]              = "LINE",
    }
end

for j = 1, #_BiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["PRECEDING_FIRST"]     = "TRUE",
        ["SPECIAL_KEY_WORDS"]   = {_BiomeSpecific[j], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["PRECEDING_KEY_WORDS"] = {"BiomeSpecific"},
        ["LINE_OFFSET"]         = _RemoveLineOffset,
        ["REMOVE"]              = "LINE",
    }
end

--|-------------------------------------------------------------------------------------------------------
--| Add Robots To SubBiomeSpecific List
--|-------------------------------------------------------------------------------------------------------

for i = 1, #_SubBiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_SubBiomeSpecific[i], "GcCreatureGenerationOptionalWeightedList.xml", "Archetypes", "GcCreatureGenerationWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["REMOVE"]              = "SECTION",
    }
end

for j = 1, #_SubBiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_SubBiomeSpecific[j], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["ADD_OPTION"]          = "ADDafterLINE",
        ["ADD"]                 = _RobotArchetypes,
    }
end

--| Remove Left Over Sections

for i = 1, #_SubBiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["PRECEDING_FIRST"]     = "TRUE",
        ["SPECIAL_KEY_WORDS"]   = {_SubBiomeSpecific[i], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["PRECEDING_KEY_WORDS"] = {"SubBiomeSpecific"},
        ["LINE_OFFSET"]         = _RemoveLineOffset,
        ["REMOVE"]              = "LINE",
    }
end

for j = 1, #_SubBiomeSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["PRECEDING_FIRST"]     = "TRUE",
        ["SPECIAL_KEY_WORDS"]   = {_SubBiomeSpecific[j], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["PRECEDING_KEY_WORDS"] = {"SubBiomeSpecific"},
        ["LINE_OFFSET"]         = _RemoveLineOffset,
        ["REMOVE"]              = "LINE",
    }
end

--|-------------------------------------------------------------------------------------------------------
--| Add Robots To AbandonedSystemSpecific
--|-------------------------------------------------------------------------------------------------------

for i = 1, #_AbandonedBiomes do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_AbandonedBiomes[i], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["REMOVE"]              = "SECTION"
    }
end

for j = 1, #_EmptySystemSpecific do
    CreatureGenerationData[#CreatureGenerationData + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {_EmptySystemSpecific[j], "GcCreatureGenerationOptionalWeightedList.xml"},
        ["SECTION_ACTIVE"]      = {1,},
        ["LINE_OFFSET"]         = "-1",
        ["ADD"]                 = _RobotArchetypeSystem
    }
end
