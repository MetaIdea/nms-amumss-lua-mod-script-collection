ColorName   = "YELLOW"
RedAmount   = 1.0
GreenAmount   = 0.93725
BlueAmount    = 0.0

Author      = "Gumsk"
ModName     = "gMultitool Pulse Spitter"
ModNameSub    = ColorName
BaseDescription = "Changes the pulse spitter projectile and explosion color to "..ColorName
GameVersion = "6.1.8.0"
ModVersion = "a"

FileSource1   = "MODELS/COMMON/PROJECTILES/MULTITOOL_SMG.SCENE.MBIN"
FileSource2   = "MODELS/COMMON/PROJECTILES/MULTITOOL_SMG/PROJECTILEMESHMAT.MATERIAL.MBIN"
FileSource3   = "MODELS/COMMON/PROJECTILES/MULTITOOL_SMG/EMITTERS/SPARKLEMITTER1.PARTICLE.MBIN"
FileSource4   = "MODELS/COMMON/WEAPONS/MULTITOOL/SMGMUZZLEFLASH.SCENE.MBIN"
FileSource5   = "MODELS/EFFECTS/MUZZLE/SMGMUZZLE/MUZZLEMAIN.PARTICLE.MBIN"
FileSource6   = "MODELS/EFFECTS/PROJECTILES/SMG/SMG_HIT/EMITTERS/GLOW_EMITTER.PARTICLE.MBIN"
FileSource7   = "MODELS/EFFECTS/PROJECTILES/SMG/SMG_HIT/EMITTERS/SPARKS_EMITTER.PARTICLE.MBIN"
FileSource8   = "MODELS/EFFECTS/PROJECTILES/SMG/SMG_HIT/EMITTERS/SMOKE_EMITTER.PARTICLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME      = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION     = BaseDescription,
  MOD_AUTHOR        = Author,
  NMS_VERSION       = GameVersion,
  GLOBAL_INTEGER_TO_FLOAT = "FORCE",
  MODIFICATIONS     = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = FileSource1,
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Name","COL_R"},
              VALUE_CHANGE_TABLE = {
                {"Value", RedAmount},   --0.0
              },
            },
            {
              SPECIAL_KEY_WORDS = {"Name","COL_G"},
              VALUE_CHANGE_TABLE = {
                {"Value", GreenAmount},   --1.0
              },
            },
            {
              SPECIAL_KEY_WORDS = {"Name","COL_B"},
              VALUE_CHANGE_TABLE = {
                {"Value", BlueAmount},    --0.322583
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource2,
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
              VALUE_CHANGE_TABLE = {
                {"x", RedAmount/3},     --0.032
                {"y", GreenAmount/3},   --1
                {"z", BlueAmount/3},    --0.562835
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource3,
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"ColourStart"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --2.725
                {"G", GreenAmount},     --5
                {"B", BlueAmount},      --2.635
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourMiddle"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0.368
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0.313
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourEnd"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0.36
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource4,
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Name","COL_R"},
              VALUE_CHANGE_TABLE = {
                {"Value", RedAmount},   --0.118000
              },
            },
            {
              SPECIAL_KEY_WORDS = {"Name","COL_G"},
              VALUE_CHANGE_TABLE = {
                {"Value", GreenAmount},   --1.000000
              },
            },
            {
              SPECIAL_KEY_WORDS = {"Name","COL_B"},
              VALUE_CHANGE_TABLE = {
                {"Value", BlueAmount},    --0.374059
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource5,
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"ColourStart"},
              VALUE_CHANGE_TABLE = {
                {"R", 1},         --0.918
                {"G", 1},         --1
                {"B", 1},         --0.755
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourMiddle"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0.678
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0.755
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourEnd"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0.059
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0.147
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource6,
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"ColourStart"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --5.23
                {"G", GreenAmount},     --10
                {"B", BlueAmount},      --6.502
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourMiddle"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0.139
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0.3
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourEnd"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0.023
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0.192
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource7,
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"ColourStart"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --3.845
                {"G", GreenAmount},     --5
                {"B", BlueAmount},      --4.014
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourMiddle"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --2.08
                {"G", GreenAmount},     --5
                {"B", BlueAmount},      --2.547
              },
            },
            {
              PRECEDING_KEY_WORDS = {"ColourEnd"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --0
                {"G", GreenAmount},     --1
                {"B", BlueAmount},      --0.16
              },
            },
          },
        },
        {
          MBIN_FILE_SOURCE = FileSource8,
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"ColourStart"},
              VALUE_CHANGE_TABLE = {
                {"R", RedAmount},     --3.993
                {"G", GreenAmount},     --5
                {"B", BlueAmount},      --3.905
              },
            },
          },
        },
      }
    }
  }
}