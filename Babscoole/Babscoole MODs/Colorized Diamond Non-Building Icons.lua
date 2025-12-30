NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Colorized Diamond Non-Building Icons",
["MOD_AUTHOR"]      = "Babscoole and Lyravega",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Adds colourized binocs/scanner icons for non-buildings (diamonds), with colours matching the scanner/binocs icons",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\UI\HUD\SCANNERICONS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIcons", "Mineral"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.MINERAL.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIcons", "Hazard"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.DANGER.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIcons", "HazardPlant"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.PLANTRED.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ScannableIcons", "Refiner"},
                {"ScannableIcons", "Cooker"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.BASETECH.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIconsBinocs", "Hazard"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.DANGER.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIconsBinocs", "HazardPlant"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTRED.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIconsBinocs", "Plant"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTGREEN.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableIconsBinocs", "BluePlant"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTBLUE.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ScannableIconsBinocs", "Refiner"},
                {"ScannableIconsBinocs", "Cooker"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.BASETECH.DDS"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "Hazard"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "HazardPlant"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "FreighterHeater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.875000"},
                {"G", "0.700000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "FreighterTerminal"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.820000"},
                {"G", "0.800000"},
                {"B", "0.200000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ScannableColours", "FreighterDoor"},
                {"ScannableColours", "FreighterTeleporter"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.600000"},
                {"B", "0.800000"},
                {"A", "1.000000"},
              }
            },
          }
        },
      }
    },
  }
}