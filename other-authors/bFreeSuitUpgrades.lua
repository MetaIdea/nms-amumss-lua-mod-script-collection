SuitMainPrices = [[  <Property name="SuitUpgradePrices">
	  <Property value="0"  />
  </Property>]]

SuitTechPrices = [[  <Property name="SuitTechOnlyUpgradePrices">
	  <Property value="0"  />
  </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = "Free Suit Upgrade.pak",
  ["MOD_DESCRIPTION"] = "Makes suit upgrades free and repeatable in the space station and at drop pods",
  ["MOD_AUTHOR"] = "MSO53 and Bladehawke",
  ["NMS_VERSION"] = "4.23",
  ["MODIFICATIONS"] = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/CRYOCHAMBER/ENTITIES/CRYOCHAMBERINTERACTION.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["SPECIAL_KEY_WORDS"] = { "StateID", "INTERACTOPTION" },
              ["REMOVE"] = "SECTION"
            },
            {
              ["VALUE_CHANGE_TABLE"] = {
                { "RepeatInteraction",        "True" }, -- Original "False"
                { "ReseedAfterRewardSuccess", "True" } -- Original "False"
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/CRYOCHAMBERPOD/ENTITIES/CRYOCHAMBERPOD.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = { "GcMaintenanceComponentData.xml" },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = { "StateID", "INTERACTOPTION" },
              ["REMOVE"] = "SECTION"
            },
            {
              ["VALUE_CHANGE_TABLE"] = {
                { "RepeatInteraction",        "True" }, -- Original "False"
                { "ReseedAfterRewardSuccess", "True" } -- Original "False"
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = { "SuitUpgradePrices" },
              ["REMOVE"] = "SECTION",
            },
            {
              ["PRECEDING_KEY_WORDS"] = { "SuitTechOnlyUpgradePrices" },
              ["REMOVE"] = "SECTION"
            },
            {
              
                ["PRECEDING_KEY_WORDS"] = { "ShipCargoOnlyStartingLayout" },
                ["ADD"] = SuitMainPrices,
                ["ADD_OPTION"] = "ADDAfterSECTION",
            },
            {
              ["PRECEDING_KEY_WORDS"] = { "SuitUpgradePrices" },
              ["ADD"] = SuitTechPrices,
              ["ADD_OPTION"] = "ADDAfterSECTION",
            }
          }
        }
      }
    }
  }
}
