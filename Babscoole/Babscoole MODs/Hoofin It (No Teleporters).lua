NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Hoofin It (No Teleporters)",
["MOD_DESCRIPTION"] = "Disables all teleports.  Get there the long way.",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
	              {"EnableTeleporters", "false"}
              }
            },
          }
        },
      }
    }
  }
}