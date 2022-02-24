NMS_MOD_DEFINITION_CONTAINER= 
{
  ["MOD_FILENAME"]      = "ExosuitTech48Slots.pak",
  ["MOD_DESCRIPTION"]   = "Enables the exosuit technology tab to be upgraded to 48 slots.",
  ["MOD_AUTHOR"]        = "RealGenuineHuman",
  ["NMS_VERSION"]       = "3.82",
  ["MODIFICATIONS"]     =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]   = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
          ["EXML_CHANGE_TABLE"]  = 
          {
            {
              ["VALUE_CHANGE_TABLE"]	= 
              {
                {"PlayerPersonalInventoryTechWidth",  "8"},
                {"PlayerPersonalInventoryTechHeight", "6"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"]	= 
              {
                {"PlayerPersonalInventoryTechWidth",	"8"},
                {"PlayerPersonalInventoryTechHeight", "6"},
              }
            }
          }
        }
      }
    }
  }
}