Mod_Version = "1.31"

-- File Settings --
FileName    = "Keep Talking Chef "..Mod_Version..".pak"
ModAuthor   = "Reikoku"
LuaAuthor   = "Reikoku"
Description = ""
NMS_Version = "Leviathan 3.93"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_DESCRIPTION"] = Description,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = 
          {
			{
				["SPECIAL_KEY_WORDS"]   = {"Cost", "C_NEXUSCHEF1"},
				["REPLACE_TYPE"]        = "ALL",
				["VALUE_CHANGE_TABLE"]  =
				{
					{"KeepOpen", "True"},
				},
			},
						{
				["SPECIAL_KEY_WORDS"]   = {"Cost", "C_NEXUSCHEF2"},
				["REPLACE_TYPE"]        = "ALL",
				["VALUE_CHANGE_TABLE"]  =
				{
					{"KeepOpen", "True"},
				},
			},
						{
				["SPECIAL_KEY_WORDS"]   = {"Cost", "C_NEXUSCHEF3"},
				["REPLACE_TYPE"]        = "ALL",
				["VALUE_CHANGE_TABLE"]  =
				{
					{"KeepOpen", "True"},
				},
			}
          }
        },
      }
    },
  }
}
