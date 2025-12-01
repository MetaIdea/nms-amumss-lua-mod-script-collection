Author = "Syzzle"
ModName = "sProtect"
GameVersion = "6.17"
Description = "Makes so your tech won't be breaking until your shield is down."

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]	= ModName,
  ["MOD_DESCRIPTION"]	= Description,
  ["MOD_AUTHOR"]		= Author,
  ["NMS_VERSION"]		= GameVersion,
  ["MODIFICATIONS"]	= {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] = {
            {
              ["VALUE_CHANGE_TABLE"] = {
                {"TechDamageChanceShieldLevelMin",0},		-- Original 0.01
                {"TechDamageChanceShieldLevelMax",0},		-- Original 0.75
                {"TechDamageChanceToSelectPrimary",1},		-- Original 0.1
              },
            },
          },
        },
      }
    }
  }
}