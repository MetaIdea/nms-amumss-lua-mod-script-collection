Author = "Gumsk"
ModName = "gTech"
ModNameSub = "Installs"
BaseDescription = "Enable restricted technology for alien ships and exocraft"
GameVersion = "6.1.8.0"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  NMS_VERSION   = GameVersion,
  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = FileSource,
          MXML_CHANGE_TABLE = {

          --Minotaur
            { --Exocraft combined hazard protection
              SPECIAL_KEY_WORDS = {"ID","MECH_PROT","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllVehicles"},
              }
            },

          --Alien Installs
            { --Emergency Warp
              SPECIAL_KEY_WORDS = {"ID","UT_QUICKWARP","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Teleport Receiver
              SPECIAL_KEY_WORDS = {"ID","SHIP_TELEPORT","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Rocket Launcher
              SPECIAL_KEY_WORDS = {"ID","SHIPROCKETS","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Rockets Upgrade
              SPECIAL_KEY_WORDS = {"ID","UT_ROCKETS","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Photonix Core
              SPECIAL_KEY_WORDS = {"ID","PHOTONIX_CORE","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Shotgun
              SPECIAL_KEY_WORDS = {"ID","SHIPSHOTGUN","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Shotgun Upgrade
              SPECIAL_KEY_WORDS = {"ID","T_SHIPSHOT","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Shotgun Upgrade
              SPECIAL_KEY_WORDS = {"ID","UT_SHIPSHOT","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Minigun
              SPECIAL_KEY_WORDS = {"ID","SHIPMINIGUN","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Minigun Upgrade
              SPECIAL_KEY_WORDS = {"ID","T_SHIPMINI","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Minigun Upgrade
              SPECIAL_KEY_WORDS = {"ID","UT_SHIPMINI","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Infra-Knife
              SPECIAL_KEY_WORDS = {"ID","SHIPPLASMA","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Infra-Knife Upgrade
              SPECIAL_KEY_WORDS = {"ID","T_SHIPBLOB","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },
            { --Ship Infra-Knife Upgrade
              SPECIAL_KEY_WORDS = {"ID","UT_SHIPBLOB","Category","GcTechnologyCategory"},
              VALUE_CHANGE_TABLE = {
                {"TechnologyCategory","AllShips"}
              }
            },

          --Core Tech
            { --Multitool Mining Laser Deletable
              SPECIAL_KEY_WORDS = {"ID", "LASER"},
              VALUE_CHANGE_TABLE = {
                {"Core", "False"},
              }
            },
          }
        }
      }
    }
  }
}