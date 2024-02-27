Author = "Syzzle"
ModName = "sProtect"
BaseDescription = "Makes so your tech won't be breaking until your shield is down."
GameVersion = "4.52"
--ModVersion = "v1.4"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]	= ModName..".pak",
  ["MOD_DESCRIPTION"]	= BaseDescription,
  ["MOD_AUTHOR"]		= Author,
  ["NMS_VERSION"]		= GameVersion,
  ["MODIFICATIONS"]	= {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = FileSource1,
          ["EXML_CHANGE_TABLE"] = {
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