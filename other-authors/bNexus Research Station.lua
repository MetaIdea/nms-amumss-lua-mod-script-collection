NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME = "bNexus Research Station",
  MOD_AUTHOR = "Bladehawke",
  NMS_VERSION = "5.75",
  MOD_DESCRIPTION = [[
        Provides the functions of the various Utopia research consoles in one convenient console buildable on your base or freighter.  Also includes functions for
        adding the original build styles for both ground and freighter bases and makes the Factory Token buildable (you'll have to unlock it first).  This console
        is not given for free, it must be purchased at the Nexus in the normal build tree.
    ]],
  AMUMSS_SUPPRESS_MSG = "UNUSED_VARIABLE",
  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = [[METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN]],
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"ID", "BUILD_REFINER1"},
              PRECEDING_KEY_WORDS = "Groups",
              SEC_COPY = "BuildGroups"
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "S9_BUILDERTREE"},
              VALUE_CHANGE_TABLE = {
                {"BuildableOnSpaceBase", "True"},
                {"BuildableOnFreighter", "True"}
              }
            },
            {
              SEC_EDIT = "BuildGroups",
              REMOVE = "HBOS"
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "S9_BUILDERTREE", "Groups", "GcBaseBuildingEntryGroup"},
              REPLACE_TYPE = "ALL",
              REMOVE = "SECTION"
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "S9_BUILDERTREE"},
              PRECEDING_KEY_WORDS = "Groups",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "BuildGroups"
            }
          }
        },
        {
          MBIN_FILE_SOURCE = [[METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN]],
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"ID", "MICROCHIP"},
              PRECEDING_KEY_WORDS = "Requirements",
              SEC_COPY = "TokenBuildReqs"
            },
            {
              SEC_EDIT = "TokenBuildReqs",
              SEC_KEEP = "TRUE",
              VALUE_CHANGE_TABLE = {
                {"ID", "AF_METAL"},
                {"Amount", "125"}
              }
            },
            {
              SEC_EDIT = "TokenBuildReqs",
              REMOVE = "HBOS"
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "FACT_TOKEN"},
              VALUE_CHANGE_TABLE = {
                {"IsCraftable", "True"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "FACT_TOKEN"},
              PRECEDING_KEY_WORDS = "Requirements",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "TokenBuildReqs"
            }
          }
        },
        {
          MBIN_FILE_SOURCE = [[METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN]],
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"ID", "S9_BUILDERTREE"},
              VALUE_CHANGE_TABLE = {
                {"Name", "BLD_NRS_NAME"},
                {"NameLower", "BLD_NRS_NAME_L"},
                {"Description", "BLD_NRS_DESCRIPTION"},
                {"Subtitle", "BLD_NRS_SUBTITLE"}
              }
            }
          }
        },
        {
          MBIN_FILE_SOURCE = [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BLUEPRINTANALYSER_BUILD/ENTITIES/DATA.ENTITY.MBIN]],
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {
                "Components",
                "GcInteractionComponentData",
                "PuzzleMissionOverrideTable",
                "GcAlienPuzzleMissionOverride"
              },
              VALUE_CHANGE_TABLE = {
                {"Mission", "ANALYSER_DIAG"},
                {"Puzzle", "?D_NRS_Mission"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {
                "Components",
                "GcInteractionComponentData",
                "StoryUtilityOverrideData",
                "GcStoryUtilityOverride"
              },
              VALUE_CHANGE_TABLE = {
                {"Name", "BLD_NRS_NAME_L"},
                {"Reward", "JUNK"}
              }
            }
          }
        },
        {
          MBIN_FILE_SOURCE = [[METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN]],
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              VALUE_CHANGE_TABLE = {
                {"Title", "BLD_NRS_NAME_L"},
                {"TextAlien", "UI_BP_ANALYSTER_LANG"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
              SEC_COPY = "OptionEntry",
              SEC_KEEP = "TRUE"
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "%?D_S9_TREE_PART", "Name", "ALL_REQUEST_LEAVE"},
              SEC_COPY = "MoreOpt",
              SEC_KEEP = "TRUE"
            },
            {
              SPECIAL_KEY_WORDS = {"ID", "%?D_S9_TREE_PART", "Name", "ALL_REQUEST_LEAVE"},
              SEC_COPY = "ArlEntry",
              SEC_KEEP = "TRUE"
            },
            {
              SEC_EDIT = "ArlEntry",
              VALUE_CHANGE_TABLE = {
                {"NextInteraction", "?D_NRS_Mission"},
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_BASE"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "UI_BP_ANALYSTER_OPT"},
                {"KeepOpen", "false"},
                {"MarkInteractionComplete", "true"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART", "Options", "GcAlienPuzzleOption"},
              REPLACE_TYPE = "ALL",
              REMOVE = "SECTION"
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              PRECEDING_KEY_WORDS = "Options",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "UI_S9_SUITTREE_OPT"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_SUIT"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "NPC_NEXUS_TECH_SHIP"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_SHIP"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "MoreOpt",
              VALUE_CHANGE_TABLE = {
                {"Name", "ALL_REQ_MORE_OPTS"},
                {"KeepOpen", "true"},
                {"MarkInteractionComplete", "true"},
                {"NextInteraction", "?D_NRS_P2"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "MoreOpt"
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              SEC_COPY = "AlienPuzzleTableTemplate",
              SEC_KEEP = "TRUE"
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "%?D_S9_TREE_PART"},
              REMOVE = "SECTION"
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              EXML_ID = "?D_NRS_Mission",
              VALUE_CHANGE_TABLE = {
                {"Id", "?D_NRS_Mission"},
                {"Title", "BLD_NRS_NAME_L"}
              }
            },
            {
              PRECEDING_KEY_WORDS = "Table",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "AlienPuzzleTableTemplate"
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              EXML_ID = "?D_NRS_P2",
              VALUE_CHANGE_TABLE = {
                {"Id", "?D_NRS_P2"},
                {"Title", ""},
                {"TextAlien", ""}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              SPECIAL_KEY_WORDS = {"Options", "GcAlienPuzzleOption"},
              REPLACE_TYPE = "ALL",
              REMOVE = "SECTION"
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "NPC_NEXUS_TECH_WEAP"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_WEAP"}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "NPC_NEXUS_TECH_EXO"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_EXO"}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "UI_FREIGHTER_RESEARCH_HINT"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_FRIGATE"}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "MoreOpt",
              VALUE_CHANGE_TABLE = {
                {"NextInteraction", "?D_NRS_P3"}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "MoreOpt"
            },
            {
              PRECEDING_KEY_WORDS = "Table",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "AlienPuzzleTableTemplate"
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              EXML_ID = "?D_NRS_P3",
              VALUE_CHANGE_TABLE = {
                {"Id", "?D_NRS_P3"}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              SPECIAL_KEY_WORDS = {"Options", "GcAlienPuzzleOption"},
              REPLACE_TYPE = "ALL",
              REMOVE = "SECTION"
            },
            {
              SEC_EDIT = "OptionEntry",
              VALUE_CHANGE_TABLE = {
                {"Name", "UI_PRODUCT_TREE_CRAFT"}
              }
            },
            {
              SEC_EDIT = "OptionEntry",
              PRECEDING_KEY_WORDS = {"Rewards"},
              REPLACE_TYPE = "ONCEINSIDE",
              VALUE_CHANGE_TABLE = {
                {"Rewards", "TREE_CRAFT"}
              }
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "OptionEntry"
            },
            {
              SEC_EDIT = "AlienPuzzleTableTemplate",
              PRECEDING_KEY_WORDS = "Options",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDEndSECTION",
              SEC_ADD_NAMED = "ArlEntry"
            },
            {
              PRECEDING_KEY_WORDS = "Table",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "AlienPuzzleTableTemplate"
            }
          }
        },
        {
          MBIN_FILE_SOURCE = [[METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN]],
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Unlockable", "T_FLOOR"},
              SEC_COPY = "OneEntryNoChildren",
              SEC_KEEP = "TRUE"
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "S9_BUILDERTREE"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Unlockable", "BUILDSAVE"},
              PRECEDING_KEY_WORDS = "Children",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "FACT_TOKEN"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PRODUCT_TREE_CRAFT"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_STORAGE_TREE"},
              SEC_COPY = "TreeBase",
              SEC_KEEP = "TRUE"
            },
            {
              SEC_EDIT = "TreeBase",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Title", "W_STRUCT"},
                {"Unlockable", "W_WALL"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER1"},
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_FLOOR"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER4"},
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_WALL_H"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER7"},
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_DOOR_H"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_FLOOR"},
              PRECEDING_KEY_WORDS = "Children",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_GFLOOR"}
              }
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_FLOOR_Q"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_GFLOOR"},
              PRECEDING_KEY_WORDS = "Children",
              REMOVE = "SECTION",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_GFLOOR"},
              SEC_COPY = "TwoLayers",
              SEC_KEEP = "TRUE"
            },
            {
              SEC_EDIT = "TwoLayers",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_RAMP"}
              }
            },
            {
              SEC_EDIT = "TwoLayers",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_FLOOR_Q"},
              PRECEDING_KEY_WORDS = "Children",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_RAMP_H"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER3"},
              REMOVE = "SECTION"
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_GFLOOR"},
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDafterSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "TwoLayers"
            },
            {
              SEC_EDIT = "TwoLayers",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_TRIFLOOR"}
              }
            },
            {
              SEC_EDIT = "TwoLayers",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_RAMP_H"},
              PRECEDING_KEY_WORDS = "Children",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_TRIFLOOR_Q"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_RAMP"},
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDafterSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "TwoLayers"
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER5"},
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_WALLDIAGONAL"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER6"},
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_WALL_Q"}
              }
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_WALL_Q_H"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_WALL_H"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER8"},
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_DOORWINDOW"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "CONTAINER9"},
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_DOOR"}
              }
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_WALL_WINDOW"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_DOORWINDOW"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_GDOOR"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_DOOR"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "TwoLayers",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_ARCH"}
              }
            },
            {
              SEC_EDIT = "TwoLayers",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_TRIFLOOR_Q"},
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_ARCH_H"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_DOOR_H"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "TwoLayers"
            },
            {
              SEC_EDIT = "TreeBase",
              SEC_COPY = "STRUCTS",
              SEC_KEEP = "TRUE"
            },
            {
              SEC_EDIT = "TreeBase",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Title", "W_ROOFING"},
                {"Unlockable", "W_ROOF"}
              }
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_ROOF_M"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_ROOF"},
              PRECEDING_KEY_WORDS = "Children",
              CREATE_HOES = "TRUE"
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_ROOF"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_ROOF_C"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_ROOF"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "OneEntryNoChildren",
              REPLACE_TYPE = "ONCE",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "W_ROOF_IC"}
              }
            },
            {
              SEC_EDIT = "TreeBase",
              SPECIAL_KEY_WORDS = {"Unlockable", "W_ROOF_C"},
              PRECEDING_KEY_WORDS = "Children",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = "OneEntryNoChildren"
            },
            {
              SEC_EDIT = "TreeBase",
              SEC_COPY = "ROOFS",
              SEC_KEEP = "TRUE"
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE"},
              PRECEDING_KEY_WORDS = "Trees",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "STRUCTS"
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE"},
              PRECEDING_KEY_WORDS = "Trees",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "ROOFS"
            },
            {
              SEC_EDIT = "STRUCTS",
              REPLACE_TYPE = "ALL",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "TransformMaterial()", "", "M_"},
                {"Title", "M_STRUCT"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE"},
              PRECEDING_KEY_WORDS = "Trees",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "STRUCTS"
            },
            {
              SEC_EDIT = "ROOFS",
              REPLACE_TYPE = "ALL",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "TransformMaterial()", "", "M_"},
                {"Title", "M_ROOFING"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE"},
              PRECEDING_KEY_WORDS = "Trees",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "ROOFS"
            },
            {
              SEC_EDIT = "STRUCTS",
              REPLACE_TYPE = "ALL",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "TransformMaterial()", "", "C_"},
                {"Title", "C_STRUCT"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE"},
              PRECEDING_KEY_WORDS = "Trees",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "STRUCTS"
            },
            {
              SEC_EDIT = "ROOFS",
              REPLACE_TYPE = "ALL",
              VALUE_CHANGE_TABLE = {
                {"Unlockable", "TransformMaterial()", "", "C_"},
                {"Title", "C_ROOFING"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE"},
              PRECEDING_KEY_WORDS = "Trees",
              EXML_FLAGS = "ADDNEWSECTION",
              ADD_OPTION = "ADDendSECTION",
              SEC_ADD_NAMED = "ROOFS"
            }
          }
        }
      }
    }
  }
}

-- EOF
function TransformMaterial(_, currentValue, _, t_mat)
  return (currentValue:gsub("^%a_", t_mat))
end