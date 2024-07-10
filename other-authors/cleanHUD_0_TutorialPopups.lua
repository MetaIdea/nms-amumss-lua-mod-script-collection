NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]   = "cleanHUD_0_TutorialPopups.pak",
["MOD_AUTHOR"]      = "hilightnotes",
["LUA_AUTHOR"]      = "DeathWrench",
["NMS_VERSION"]      = "3.8",
["MOD_DESCRIPTION"]   = "Removes tutorial popups (the large popups with images that explain various features, also show up when pinning a recipe).",
["MODIFICATIONS"]   =
   {
      {
         ["MBIN_CHANGE_TABLE"]    =
         {
            {
               ["MBIN_FILE_SOURCE"]    = "UI/HUD/HUDFANCYNOTIFY.MBIN", -- {"UI/HUD/HUDFANCYNOTIFY.MBIN","UI/HUD/HUDMARKER.MBIN","UI/HUD/HUDMARKERICONS.MBIN"},
               ["EXML_CHANGE_TABLE"]   =
               {
                  {
                     --["SPECIAL_KEY_WORDS"]    = {"","",},
                     --["PRECEDING_KEY_WORDS"]    = "",
                     ["REPLACE_TYPE"]              = "ALL",
                     ["VALUE_CHANGE_TABLE"]       =
                     {   
                        { "IsHidden",       "True" },       --Original "False"
                     }
                  }
               },
            }
         }
      }
   }
}