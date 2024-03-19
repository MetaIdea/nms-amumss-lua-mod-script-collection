VALID_START_BIOME_TEXT = [[
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Barren" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Dead" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Weird" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Red" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Green" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Blue" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Swamp" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Lava" />
    </Property>
]]

KNOWN_PRODUCTS_TEXT = [[
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="BP_ANALYSER" />
    </Property>
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="GARAGE_B" />
    </Property>
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="GARAGE_S" />
    </Property>
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="GARAGE_M" />
    </Property>
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="GARAGE_L" />
    </Property>
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="GARAGE_MECH" />
    </Property>
    <Property value="NMSString0x10.xml">
	  <Property name="Value" value="GARAGE_SUB" />
    </Property>
]]

MBIN_CHANGE_TABLE = {
   -- {
   --    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
   --    ["EXML_CHANGE_TABLE"] = {
   --       {
   --          ["VALUE_CHANGE_TABLE"]  = {
   --             -- Put the starting ship very far away
   --             {"StartCrashSiteMinDistance", 100000},
   --             {"StartCrashSiteMaxDistance", 500000},
   --          }
   --       }
   --    }
   -- },
   {
      ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         {
            ["VALUE_CHANGE_TABLE"] = {
               -- This starts the player on a random planet in the
               -- starter system, but also puts the player next to the
               -- ship and useful wreckage.
               {"PlayerSpawnLocationOverride", "RandomPlanet"},
               -- Random starting ship
               {"ForceInitialShip", "False"},
               -- Random starting weapon
               {"ForceInitialWeapon", "False"},
               -- Not sure if this does anything
               {"ForceLoadAllWeather", "True"},
               -- Not sure if this does anything
               {"ModifyPlanetsInInitialSystems", "False"},
            }
         }
      }
   },
   -- If you're stuck on the starting planet for while, at least you might get some extra elements
   {
      ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         {
            ["VALUE_CHANGE_TABLE"] = {
               {"UseSecondaryBiomeSubstances", "True"},
            }
         },
      }
   },
   -- Require harsher planet in starter system.
   -- There is probably a better way to overwrite a list.
   {
      ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         -- Add harsher biomes
         {
            ["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
            ["ADD"] = VALID_START_BIOME_TEXT,
            ["ADD_OPTION"]  = "ADDafterSECTION",
            ["LINE_OFFSET"] = -1,
         },
      },
   },
   {
      ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         -- Remove not quite as harsh biomes
         {
            ["FOREACH_SKW_GROUP"] = {
               {"Biome", "Toxic"},
               {"Biome", "Scorched"},
               {"Biome", "Radioactive"},
               {"Biome", "Frozen"},
            },
            ["REMOVE"] = {"SECTION"},
         },
      }
   },
   -- Start out knowing Construction Research Station and the exocraft bays
   {
      ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         {
            ["SPECIAL_KEY_WORDS"] = {
               "StartWithAllItemsKnownDisabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml",
               "InitialKnownThings", "GcKnownThingsPreset.xml",
            },
            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
            ["ADD"] = KNOWN_PRODUCTS_TEXT,
            ["ADD_OPTION"]  = "ADDafterSECTION",
            ["LINE_OFFSET"] = -1,
         }
      }
   },
   -- Delete all slots on the starter ship
   {
      ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         {
            ["FOREACH_SKW_GROUP"] = {
               {"ShipStartingLayout", "GcInventoryLayout.xml"},
               {"ShipCargoOnlyStartingLayout", "GcInventoryLayout.xml"},
               {"ShipTechOnlyStartingLayout", "GcInventoryLayout.xml"},
            },
            ["VALUE_CHANGE_TABLE"] = {
               {"Slots", "0"},
            },
         },
      },
   },
   -- Remove most items from initial crash site
   {
      ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DISTRESSSIGNAL/STARTSCENE.SCENE.MBIN",
      ["EXML_CHANGE_TABLE"] = {
         {
            ["FOREACH_SKW_GROUP"] = {
               {"Name", "FUELPLANT",},
               {"Name", "FUELPLANT1",},
               {"Name", "FUELPLANT2",},
               {"Name", "FUELPLANT3",},
               {"Name", "ResourceLarge1",},
               {"Name", "ResourceIron1",},
               {"Name", "ResourceDebris",},
               {"Name", "ResourceSmall4",},
               {"Name", "ResourceSmall6",},
               {"Name", "ShipSpawn_1"},
               {"Name", "ShipSpawn_2"},
               {"Name", "ShipSpawn_3"},
            },
            ["REMOVE"] 	= {"SECTION"},
         },
      },
   },
}

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"]    = "duggelzWorseStart.pak",
   ["MOD_AUTHOR"]      = "duggelz",
   ["MOD_DESCRIPTION"] = "Adds a slower and more difficult starter planet experience.",
   ["NMS_VERSION"]     = "4.52+",
   ["MODIFICATIONS"]   = {{["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE,}},
}

-- Errors encountered in tutorial mission
-- "Exosuit Initialisation In Progress"
-- "Research Structures: Archives Still Fragmented"
