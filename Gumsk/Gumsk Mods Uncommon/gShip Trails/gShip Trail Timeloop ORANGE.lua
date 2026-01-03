Color = "ORANGE"
RedAmount = 0.97647
GreenAmount = 0.39607
BlueAmount = 0.08235

Author = "Gumsk"
ModName = "gShip Trail"
ModNameSub = "Timeloop "..Color
BaseDescription = "Changes color of stealth/dark ship trail to "..Color
GameVersion = "6.1.8.0"
ModVersion = "a"

--[[Files Modified:
MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\TIMELOOPTRAIL.MATERIAL.MBIN
MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\BLACKHOLE.PARTICLE.MBIN
MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\RINGSPARKS.PARTICLE.MBIN
MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\FLARE.PARTICLE.MBIN
MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\DISTORTION.PARTICLE.MBIN
MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\WARPBASE.PARTICLE.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  NMS_VERSION   = GameVersion,
  GLOBAL_INTEGER_TO_FLOAT = "FORCE",
  ADD_FILES = {
    {
      FILE_DESTINATION    = "TEXTURES/EFFECTS/TRAILS/HOT/GUMSKTIMELOOP"..Color..".DDS",
      ["EXTERNAL_FILE_SOURCE"]  = "DDS\GUMSKTIMELOOP"..Color..".DDS",
    },
  },
  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\TIMELOOPTRAIL.MATERIAL.MBIN",

          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"Samplers"},
              VALUE_CHANGE_TABLE = {
                {"Map", "TEXTURES/EFFECTS/TRAILS/HOT/GUMSKTIMELOOP"..Color..".DDS"},
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = {
            "MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\BLACKHOLE.PARTICLE.MBIN",
            "MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\RINGSPARKS.PARTICLE.MBIN",
            "MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\FLARE.PARTICLE.MBIN",
            "MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\DISTORTION.PARTICLE.MBIN",
            "MODELS\EFFECTS\SPACECRAFT\SHIPTIMELOOPTRAIL\WARPBASE.PARTICLE.MBIN",
          },
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"ColourStart"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},
                {"G", GreenAmount},
                {"B", BlueAmount},
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourMiddle"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},
                {"G", GreenAmount},
                {"B", BlueAmount},
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourEnd"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},
                {"G", GreenAmount},
                {"B", BlueAmount},
              },
            },
          },
        },
      }
    }
  }
}