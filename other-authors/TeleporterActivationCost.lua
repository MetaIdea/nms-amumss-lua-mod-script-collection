NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "TeleporterActivationCost",
["MOD_DESCRIPTION"] = "All teleporters require 50 Navigation Data to activate",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        -- 1. Nexus/Anomaly Teleporter
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS\ENTITIES\TELEPORTERNEXUSINTERACTION.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SubstanceId", "NAV_DATA"},
                {"Cost", "50"},
                {"Repeat", "True"},
              }
            },
          },
        },
        -- 2. Player Base Teleporter
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER\ENTITIES\TELEPORTERINTERACTION.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SubstanceId", "NAV_DATA"},
                {"Cost", "50"},
                {"Repeat", "True"},
              }
            },
          },
        },
        -- 3. Normal Space Station Teleporter
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\TELEPORTERTYPEB\ENTITIES\STATIONTELEPORTERB.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SubstanceId", "NAV_DATA"},
                {"Cost", "50"},
                {"Repeat", "True"},
              }
            },
          },
        },
        -- 4. Outlaw/Pirate Station Teleporter
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_STATION\ENTITIES\TELEPORTERSTATIONINTERACTION.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SubstanceId", "NAV_DATA"},
                {"Cost", "50"},
                {"Repeat", "True"},
              }
            },
          },
        },
        -- 5. Freighter Teleporter Room
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\TELEPOROOM\ENTITIES\TELEPORTERINTERACTION.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SubstanceId", "NAV_DATA"},
                {"Cost", "50"},
                {"Repeat", "True"},
              }
            },
          },
        },
      },
    },
  },
}