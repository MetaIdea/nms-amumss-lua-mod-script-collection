--Spawn Rate --
Spawn = 500

--Herd size--
HS = 8

--cave & underwater animals density multiplier
CU = 7

--frequency modifiers--
--FQ = 20

-- files Path--
Filesource1 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREROLEDESCRIPTIONTABLE.MBIN"
Filesource2 =
        {
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBIGBIRD.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBUSY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMON.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONLIZARD.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONSNAKE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORESMALL.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERDMED.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEMAYBEBUTTERFLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORLARGE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBUTTERFLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTAL.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEPETS.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEPLOW.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE2.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE3.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEROLLER.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLESMALLBIRD.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLETEST.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEBUTTERFLOCK.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEBUTTERFLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEDIGGER.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEDRILL.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEFLOATER.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEFLYINGBEETLE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLELARGEBUTTERFLY.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEMOLE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLESHARKEATSNAKE.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEJELLYFISH.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCKSHARK.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK3.MBIN",
        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK2.MBIN"
        }
Filesource3 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Quick Exploration",
["MOD_DESCRIPTION"] = "Quick Exploration",
["MOD_AUTHOR"]      = "PyronoxOmega and Babscoole",
["NMS_VERSION"]     = "6.18",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = Filesource3,
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"CaveGroupsPerKm"},
                {"WaterGroupsPerKm"},
                {"GroundGroupsPerKm"},
                {"AirGroupsPerKm"},
              },
              ["MATH_OPERATION"] = "*",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    CU},
                {"Normal",    CU},
                {"Dense",     CU},
                {"VeryDense", CU}
              }
            },
            -- {
              -- ["PRECEDING_KEY_WORDS"] = {"RarityFrequencyModifiers"},
              -- ["VALUE_CHANGE_TABLE"] =
              -- {
                  -- {"Uncommon",  FQ},
                  -- {"Rare",      FQ},
                  -- {"SuperRare", FQ}
              -- }
            -- },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = Filesource2,
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["MATH_OPERATION"] = "*",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinGroupSize", HS},
                {"MaxGroupSize", HS},
              }
            },
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IncreasedSpawnDistance", Spawn },
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = Filesource1,
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"All", "GcCreatureRoleFilenameList"},
                {"UnderwaterFiles", "GcCreatureRoleFilenameList"},
                {"UnderwaterFilesExtra", "GcCreatureRoleFilenameList"},
                {"CaveFiles", "GcCreatureRoleFilenameList"},
                {"AirFiles", "GcCreatureRoleFilenameList"},
                {"Structure", "GcCreatureRoleFilenameList"},
                {"Beam", "GcCreatureRoleFilenameList"},
                {"Hexagon", "GcCreatureRoleFilenameList"},
                {"FractCube", "GcCreatureRoleFilenameList"},
                {"Bubble", "GcCreatureRoleFilenameList"},
                {"Shards", "GcCreatureRoleFilenameList"},
                {"Contour", "GcCreatureRoleFilenameList"},
                {"Shell", "GcCreatureRoleFilenameList"},
                {"BoneSpire", "GcCreatureRoleFilenameList"},
                {"WireCell", "GcCreatureRoleFilenameList"},
                {"HydroGarden", "GcCreatureRoleFilenameList"},
              },
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0"},
                {"Low",  "70"},
                {"Mid",  "90"},
                {"Full", "100"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LifeChance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0"},
                {"Low",  "70"},
                {"Mid",  "90"},
                {"Full", "100"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"RoleFrequencyModifiers"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Never",  "0"},
                {"Low",    "30"},
                {"Normal", "75"},--25
                {"High",   "150"},--50
              },
            },
          }
        },
      }
    }
  }
}