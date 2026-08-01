NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NGT_Extreme UnderHaul",
["MOD_AUTHOR"]      = "NightySama",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Changes inventory parameters",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
          -- GenerationData
            {
              ["SPECIAL_KEY_WORDS"] = {"SciSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "12"},
                {"MaxSlots",     "16"},
                {"MinTechSlots", "7"},
                {"MaxTechSlots", "10"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SciMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "16"},
                {"MaxSlots",     "23"},
                {"MinTechSlots", "9"},
                {"MaxTechSlots", "14"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"SciLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
                {"MaxSlots",     "31"},
                {"MinTechSlots", "10"},
                {"MaxTechSlots", "18"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"FgtSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "8"},
                {"MaxSlots",     "9"},
                {"MinTechSlots", "10"},
                {"MaxTechSlots", "16"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FgtMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "9"},
                {"MaxSlots",     "12"},
                {"MinTechSlots", "11"},
                {"MaxTechSlots", "22"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"FgtLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "10"},
                {"MaxSlots",     "15"},
                {"MinTechSlots", "12"},
                {"MaxTechSlots", "28"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"ShuSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "11"},
                {"MaxSlots",     "14"},
                {"MinTechSlots", "8"},
                {"MaxTechSlots", "13"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ShtMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "14"},
                {"MaxSlots",     "22"},
                {"MinTechSlots", "9"},
                {"MaxTechSlots", "17"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"ShtLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "17"},
                {"MaxSlots",     "29"},
                {"MinTechSlots", "10"},
                {"MaxTechSlots", "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"DrpSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "13"},
                {"MaxSlots",     "25"},
                {"MinTechSlots", "5"},
                {"MaxTechSlots", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DrpMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "18"},
                {"MaxSlots",     "38"},
                {"MinTechSlots", "4"},
                {"MaxTechSlots", "10"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"DrpLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "23"},
                {"MaxSlots",     "50"},
                {"MinTechSlots", "3"},
                {"MaxTechSlots", "12"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"RoySmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "8"},
                {"MaxSlots",     "11"},
                {"MinTechSlots", "12"},
                {"MaxTechSlots", "16"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoyMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "11"},
                {"MaxSlots",     "15"},
                {"MinTechSlots", "14"},
                {"MaxTechSlots", "21"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"RoyLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "14"},
                {"MaxSlots",     "19"},
                {"MinTechSlots", "16"},
                {"MaxTechSlots", "26"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"AlienSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "10"},
                {"MaxSlots",     "10"},
                {"MinTechSlots", "30"},
                {"MaxTechSlots", "30"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AlienMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
                {"MaxSlots",     "20"},
                {"MinTechSlots", "30"},
                {"MaxTechSlots", "30"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"AlienLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "30"},
                {"MaxSlots",     "30"},
                {"MinTechSlots", "30"},
                {"MaxTechSlots", "30"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"SailSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "7"},
                {"MaxSlots",     "10"},
                {"MinTechSlots", "14"},
                {"MaxTechSlots", "19"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SailMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "9"},
                {"MaxSlots",     "13"},
                {"MinTechSlots", "17"},
                {"MaxTechSlots", "25"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"SailLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "10"},
                {"MaxSlots",     "16"},
                {"MinTechSlots", "20"},
                {"MaxTechSlots", "30"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"RobotSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "6"},
                {"MaxSlots",     "8"},
                {"MinTechSlots", "13"},
                {"MaxTechSlots", "18"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RobotMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "8"},
                {"MaxSlots",     "13"},
                {"MinTechSlots", "15"},
                {"MaxTechSlots", "24"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"RobotLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "10"},
                {"MaxSlots",     "17"},
                {"MinTechSlots", "18"},
                {"MaxTechSlots", "29"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FreighterMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"FreighterLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinTechSlots", "20"},
                {"MaxTechSlots", "32"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"VehicleSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "16"},
                {"MaxSlots",     "16"},
                {"MinTechSlots", "15"},
                {"MaxTechSlots", "15"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"VehicleMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "24"},
                {"MaxSlots",     "24"},
                {"MinTechSlots", "22"},
                {"MaxTechSlots", "22"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"VehicleLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "48"},
                {"MaxSlots",     "48"},
                {"MinTechSlots", "30"},
                {"MaxTechSlots", "30"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"ChestSmall", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
                {"MaxSlots",     "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"ChestMedium", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
                {"MaxSlots",     "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"ChestLarge", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
                {"MaxSlots",     "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"ChestCapsule", "GcInventoryLayoutGenerationDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     "20"},
                {"MaxSlots",     "20"},
              }
            },
		      
          --ShipCostData
            {
              ["SPECIAL_KEY_WORDS"] = {"Freighter", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinValueInMillions", "26.187450"},
                {"MaxValueInMillions", "49.946616"},
                {"TradeInMultiplier",  "65.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Freighter", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "117.000000"},
                {"A", "308.000000"},
                {"S", "634.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "13"},
                {"MinValueInMillions", "1.938327"},
                {"MaxSlots",           "50"},
                {"MaxValueInMillions", "9.915665"},
                {"TradeInMultiplier",  "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "26.500000"},
                {"A", "65.000000"},
                {"S", "123.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "8"},
                {"MinValueInMillions", "2.08017"},
                {"MaxSlots",           "22"},
                {"MaxValueInMillions", "8.047865"},
                {"TradeInMultiplier",  "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "28.500000"},
                {"A", "59.000000"},
                {"S", "96.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "12"},
                {"MinValueInMillions", "2.100587"},
                {"MaxSlots",           "65"},
                {"MaxValueInMillions", "6.573904"},
                {"TradeInMultiplier",  "70.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "24.500000"},
                {"A", "75.000000"},
                {"S", "170.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "11"},
                {"MinValueInMillions", "2.038475"},
                {"MaxSlots",           "40"},
                {"MaxValueInMillions", "6.349571"},
                {"TradeInMultiplier",  "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "16.000000"},
                {"A", "39.000000"},
                {"S", "73.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"PlayerFreighter", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinValueInMillions", "26.187450"},
                {"MaxValueInMillions", "49.946616"},
                {"TradeInMultiplier",  "65.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PlayerFreighter", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "117.000000"},
                {"A", "308.000000"},
                {"S", "634.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "7"},
                {"MinValueInMillions", "2.088273"},
                {"MaxSlots",           "30"},
                {"MaxValueInMillions", "2.264907"},
                {"TradeInMultiplier",  "80.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "17.000000"},
                {"A", "47.000000"},
                {"S", "104.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "10"},
                {"MinValueInMillions", "9.336729"},
                {"MaxSlots",           "80"},
                {"MaxValueInMillions", "8.341632"},
                {"TradeInMultiplier",  "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "40.000000"},
                {"A", "122.000000"},
                {"S", "260.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "7"},
                {"MinValueInMillions", "2.294388"},
                {"MaxSlots",           "21"},
                {"MaxValueInMillions", "5.974293"},
                {"TradeInMultiplier",  "75.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "30.000000"},
                {"A", "57.000000"},
                {"S", "105.000000"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",           "6"},
                {"MinValueInMillions", "2.460636"},
                {"MaxSlots",           "30"},
                {"MaxValueInMillions", "7.256093"},
                {"TradeInMultiplier",  "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryCostDataEntry"},
              ["PRECEDING_KEY_WORDS"] = {"ClassMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "35.000000"},
                {"A", "70.000000"},
                {"S", "115.000000"},
              }
            },
			

          --ShipInventoryMaxUpgradeSize
            {
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "70"},
                {"A", "85"},
                {"S", "100"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "13"},
                {"B", "15"},
                {"A", "17"},
                {"S", "20"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "16"},
                {"B", "18"},
                {"A", "20"},
                {"S", "22"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"B", "33"},
                {"A", "36"},
                {"S", "40"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Freighter", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "25"},
                {"B", "50"},
                {"A", "80"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Freighter", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "15"},
                {"B", "25"},
                {"A", "40"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"PlayerFreighter", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "25"},
                {"B", "50"},
                {"A", "80"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PlayerFreighter", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "15"},
                {"B", "25"},
                {"A", "40"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "35"},
                {"B", "40"},
                {"A", "50"},
                {"S", "65"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "20"},
                {"B", "23"},
                {"A", "28"},
                {"S", "35"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "31"},
                {"B", "34"},
                {"A", "37"},
                {"S", "40"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "23"},
                {"B", "26"},
                {"A", "29"},
                {"S", "33"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "20"},
                {"B", "22"},
                {"A", "25"},
                {"S", "30"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "30"},
                {"B", "34"},
                {"A", "38"},
                {"S", "43"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "35"},
                {"B", "45"},
                {"A", "60"},
                {"S", "80"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "35"},
                {"B", "40"},
                {"A", "50"},
                {"S", "60"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "17"},
                {"B", "18"},
                {"A", "19"},
                {"S", "21"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "32"},
                {"B", "35"},
                {"A", "40"},
                {"S", "50"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
				{"C", "19"},
                {"B", "21"},
                {"A", "23"},
                {"S", "26"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcShipInventoryMaxUpgradeCapacity"},
              ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "32"},
                {"B", "36"},
                {"A", "40"},
                {"S", "45"},
              }
            },
			
          --ShipBaseStatsData
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "5"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "28"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "3"},
                {"Max", "8"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "33"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "7"},
                {"Max", "15"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "18"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "43"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "25"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "21"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "12"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "16"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "35"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "17"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "17"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "50"},
                {"Max", "66"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "25"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "60"},
                {"Max", "81"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "20"},
                {"Max", "27"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "40"},
                {"Max", "52"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "14"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "24"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "5"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "30"},
                {"Max", "42"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "3"},
                {"Max", "8"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "50"},
                {"Max", "72"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "15"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "9"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "5"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "7"},
                {"Max", "15"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "3"},
                {"Max", "6"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "5"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "25"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "9"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "3"},
                {"Max", "8"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "25"},
                {"Max", "47"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "17"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "8"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "12"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "10"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "17"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "13"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "17"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "25"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "19"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "31"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "15"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "15"},
                {"Max", "25"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "25"},
                {"Max", "52"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "25"},
                {"Max", "50"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "35"},
                {"Max", "51"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "15"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "40"},
                {"Max", "118"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "30"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "3"},
                {"Max", "9"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "10"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "12"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "30"},
                {"Max", "55"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "20"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "29"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "35"},
                {"Max", "65"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "20"},
                {"Max", "36"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "35"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "45"},
                {"Max", "85"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "30"},
                {"Max", "61"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "20"},
                {"Max", "24"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "30"},
                {"Max", "37"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "C", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "3"},
                {"Max", "5"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "40"},
                {"Max", "51"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "45"},
                {"Max", "60"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "B", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "6"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "55"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "55"},
                {"Max", "70"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "A", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "5"},
                {"Max", "9"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_DAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "70"},
                {"Max", "91"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "70"},
                {"Max", "92"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_HYPERDRIVE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "0"},
                {"Max", "0"},
              }
            },
			{
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData", "BaseStatID", "SHIP_AGILE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Min", "10"},
                {"Max", "17"},
              }
            },
          }
        }
      }
    },
	{
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Normal", "MaxSubstanceStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "80"},
                {"Personal", "100"},
                {"PersonalCargo", "250"},
                {"Ship", "250"},
                {"ShipCargo", "500"},
                {"Freighter", "2500"},
                {"FreighterCargo", "5000"},
                {"Vehicle", "200"},
                {"Chest", "1000"},
                {"BaseCapsule", "1500"},
                {"MaintenanceObject", "250"},
                {"UIPopup", "250"},
                {"SeasonTransfer", "9999"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Normal", "MaxProductStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "2"},
                {"Personal", "5"},
                {"PersonalCargo", "10"},
                {"Ship", "10"},
                {"ShipCargo", "15"},
                {"Freighter", "30"},
                {"FreighterCargo", "75"},
                {"Vehicle", "5"},
                {"Chest", "15"},
                {"BaseCapsule", "25"},
                {"MaintenanceObject", "10"},
                {"UIPopup", "1"},
                {"SeasonTransfer", "20"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Low", "MaxSubstanceStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "80"},
                {"Personal", "50"},
                {"PersonalCargo", "100"},
                {"Ship", "150"},
                {"ShipCargo", "250"},
                {"Freighter", "1500"},
                {"FreighterCargo", "2500"},
                {"Vehicle", "100"},
                {"Chest", "1000"},
                {"BaseCapsule", "750"},
                {"MaintenanceObject", "150"},
                {"UIPopup", "150"},
                {"SeasonTransfer", "9999"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Low", "MaxProductStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "2"},
                {"Personal", "1"},
                {"PersonalCargo", "3"},
                {"Ship", "3"},
                {"ShipCargo", "5"},
                {"Freighter", "20"},
                {"FreighterCargo", "50"},
                {"Vehicle", "3"},
                {"Chest", "10"},
                {"BaseCapsule", "15"},
                {"MaintenanceObject", "5"},
                {"UIPopup", "5"},
                {"SeasonTransfer", "20"},
              }
            }
          }
        }
      }
    },
	{
		["MBIN_CHANGE_TABLE"] =
		{
			{
				["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
				["MXML_CHANGE_TABLE"] =
				{
					{
					["SPECIAL_KEY_WORDS"] = {"ShipStartingLayout", "GcInventoryLayout"},
					["VALUE_CHANGE_TABLE"] =
						{
							{"Slots", 9},
						}
					},
					{
					["SPECIAL_KEY_WORDS"] = {"ShipTechOnlyStartingLayout", "GcInventoryLayout"},
					["VALUE_CHANGE_TABLE"] =
						{
							{"Slots", 7},
						}
					}
				}
			}
		}
	},
  }
}