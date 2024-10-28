ModName = "Test_Patterns" -- "ClaimFreeExpeditionShips"
Author = "Jackty89-Wbertro"

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = ModName..".pak",
  ["MOD_DESCRIPTION"] = ModName,
  ["MOD_AUTHOR"] = Author,
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          
          -- using WISS
          ["EXML_CHANGE_TABLE"] = {
            {
              COMMENT = [[OK, 4x2 matches]],
              WISS = {
                { "IGNORE", "RS_S.*_SHIP" },
              },
              WISUBSEC_OPTION = "ALL",
              ["VALUE_CHANGE_TABLE"] = {
                {"CostAmount", 0},
                {"Currency", "Units"},
              },
            },
          },
        },
        
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          
          -- using SKW
          ["EXML_CHANGE_TABLE"] = {
            {
              COMMENT = [[OK, 4x2 matches]],
              SKW = { "Id", "^RS_S.-_SHIP$" }, -- Note: can also use "RS_S.-_SHIP"
              REPLACE_TYPE = "ALL",
              ["VALUE_CHANGE_TABLE"] = {
                {"CostAmount", 10},
                {"Currency", "Units"},
              },
            },
          },
        },

        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          
        },
      },
    },
  }, --20 global replacements
}
