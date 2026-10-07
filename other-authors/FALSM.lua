HarvesterSpeedup = 720
HarvesterOutputCapacityMultiplier = 10
RefinerSpeedup = 60
BioGeneratorPowerMultiplier = 100
BatteryCapacityMultiplier = 50
ExtractorSpeedup = 720
ExtractorCapacityMultiplier = 3
SiloCapacityMultiplier = 9

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Fully automated luxury space machines",
["MOD_AUTHOR"]      = "jw11-modder",
["NMS_VERSION"]     = "7.05",
["MOD_DESCRIPTION"] = 
[[Oxygen and Gas Harvesters, Autonomous Mining Unit, Antimatter Reactor and Portable Refiner all work much faster and without any need for fuel. 
Harvesters give 10 times the usual output of materials. Large refiners work as usual, just faster. Personal refiners have additional input slots and need to be fueled only once.
Health and Shield Stations now work for free. Gas and Mineral Extractors now work faster, and Silos store more material.
Biogenerators now work without fuel and produce much more power, while Batteries store much more power.

HarvesterSpeedup - defines how much faster Harvesters, AMU and Antimatter Reactor would work.
HarvesterOutputCapacityMultiplier - defines how much more material Harvesters and AMU will produce.
RefinerSpeedup - defines how much faster refiners will work.
BioGeneratorPowerMultiplier - defines how much more power Biogenerator will produce.
BatteryCapacityMultiplier - defines how much more power Battery will store.
ExtractorSpeedup - defines how much faster Extractors will work.
ExtractorCapacityMultiplier - defines how much more material Extractors will store.
SiloCapacityMultiplier - defines how much more material Silos will store.
]],
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\GASHARVESTER\ENTITIES\GASHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"]  = {{"IGNORE",   "IGNORE"}},
              ["REMOVE"]              = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcGeneratorUnitComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ResourceMaintenanceSlotOverride", 0}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaintenanceData", "GcMaintenanceComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VisibleMaintenanceSlots", 1},
                {"AllowCharge", false},
                {"AutoCompleteOnStart", true}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GAS1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity", "@*"..HarvesterOutputCapacityMultiplier},
                {"AmountEmptyTimePeriod", "@/"..HarvesterSpeedup}
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AllowTransferIn", true},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\OXYGENHARVESTER180\ENTITIES\OXYGENHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL4"},
              ["VALUE_CHANGE_TABLE"]  = {{"IGNORE",   "IGNORE"}},
              ["REMOVE"]              = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcGeneratorUnitComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ResourceMaintenanceSlotOverride", 0}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "OXYGEN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity", "@*"..HarvesterOutputCapacityMultiplier},
                {"AmountEmptyTimePeriod", "@/"..HarvesterSpeedup}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaintenanceData", "GcMaintenanceComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VisibleMaintenanceSlots", 1},
                {"AllowCharge", false},
                {"AutoCompleteOnStart", true}
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AllowTransferIn", true},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HARVESTER\ENTITIES\RESOURCEHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"]  = {{"IGNORE",   "IGNORE"}},
              ["REMOVE"]              = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcGeneratorUnitComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ResourceMaintenanceSlotOverride", 0}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "YELLOW2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity", "@*"..HarvesterOutputCapacityMultiplier},
                {"AmountEmptyTimePeriod", "@/"..HarvesterSpeedup}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaintenanceData", "GcMaintenanceComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VisibleMaintenanceSlots", 1},
                {"AllowCharge", false},
                {"AutoCompleteOnStart", true}
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AllowTransferIn", true},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\ANTIMATTERHARVESTER\ENTITIES\ANTIMATTERHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL4"},
              ["VALUE_CHANGE_TABLE"]  = {{"IGNORE",   "IGNORE"}},
              ["REMOVE"]              = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ANTIMATTER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountEmptyTimePeriod", "@/"..HarvesterSpeedup}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcMaintenanceComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VisibleMaintenanceSlots", 1},
                {"AllowCharge", false},
                {"AutoCompleteOnStart", true}
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AllowTransferIn", true},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"]  = {{"IGNORE",   "IGNORE"}},
              ["REMOVE"]              = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcRefinerUnitComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VisibleMaintenanceSlots", 3},
                {"AllowCharge", false},
                {"NumInputs", 2},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "U_BIOGENERATOR"},
              ["PRECEDING_KEY_WORDS"] = {"GcBaseLinkGridData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Rate", "60"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "U_BIOGENERATOR"},
              ["PRECEDING_KEY_WORDS"] = {"DependentConnections"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DependentRate", "@*"..BioGeneratorPowerMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "U_BATTERY_S"},
              ["PRECEDING_KEY_WORDS"] = {"GcBaseLinkGridData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Storage", "@*"..BatteryCapacityMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "U_EXTRACTOR_S"},
              ["PRECEDING_KEY_WORDS"] = {"GcBaseLinkGridData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Rate", "@*"..ExtractorSpeedup},
                {"Storage", "@*"..ExtractorCapacityMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "U_GASEXTRACTOR"},
              ["PRECEDING_KEY_WORDS"] = {"GcBaseLinkGridData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Rate", "@*"..ExtractorSpeedup},
                {"Storage", "@*"..ExtractorCapacityMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "U_SILO_S"},
              ["PRECEDING_KEY_WORDS"] = {"GcBaseLinkGridData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Storage", "@*"..SiloCapacityMultiplier},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            --[[{
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"]  = {{"IGNORE",   "IGNORE"}},
              ["REMOVE"]              = "SECTION"
            },]]
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountEmptyTimePeriod", -1}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcRefinerUnitComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VisibleMaintenanceSlots", 4}, --orig 3
                {"NumInputs", 2}, --orig 1
                --{"AllowCharge", false}
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_REFINER"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_REFINER2"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "3"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HEALTHSTATION\ENTITIES\MEDON.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Repeat",  "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcSimpleInteractionComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Delay",  "1"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HEALTHSTATION\ENTITIES\HEALTHSTATION.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Action","GcPlayAudioAction"},
              ["WHERE_IN_SECTION"]    = {
                {"Sound","Obj_HealthStation_Off"},
              },
              ["VALUE_CHANGE_TABLE"]  = {
                {"Sound",   ""}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Event","GcStateTimeEvent"},
              ["SECTION_ACTIVE"] = {2},
              ["VALUE_CHANGE_TABLE"]  = {
                {"Seconds",   "1"}
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELDSTATION\ENTITIES\SHIELDON.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ActivationCost", "GcInteractionActivationCost"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SubstanceId",  ""},
                {"Cost",  "0"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RefinerProductsMadeInTime",  "@*"..RefinerSpeedup},
                {"RefinerSubsMadeInTime",  "@*"..RefinerSpeedup},
                {"RefinerProductsMadeInTimeSurvival",  "@*"..RefinerSpeedup},
                {"RefinerSubsMadeInTimeSurvival",  "@*"..RefinerSpeedup},
              }
            },
          },
        }
      }
    }
  }
}