--------------------------------------------------------------------------------
--  KnowGlyphsNoCharge
--  All 16 portal glyphs are known from the start, and portals do not need
--  to be charged before dialling.
--
--  Original mod by Unclejuju. Modernized for NMS 6.45 / AMUMSS 5.6.2.
--
--  HOW IT WORKS
--    * GCGAMEPLAYGLOBALS.GLOBAL.MBIN  -> KnowAllRunes = True
--    * PORTAL BUTTON.ENTITY.MBIN      -> AutoCompleteOnStart = True
--      (the "charge the portal" interaction completes itself immediately)
--------------------------------------------------------------------------------

-------------------------------- SETTINGS --------------------------------------
local KnowAllGlyphs      = "True"   -- vanilla: False
local PortalsNeedNoCharge = "True"  -- vanilla: False
------------------------------ END SETTINGS ------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = "KnowGlyphsNoCharge",
  ["MOD_AUTHOR"]      = "Unclejuju",
  ["LUA_AUTHOR"]      = "Unclejuju (modernized by Julian)",
  ["NMS_VERSION"]     = "6.45",
  ["MOD_DESCRIPTION"] = "Know all glyphs and portals do not need charging.",
  ["MODIFICATIONS"]   = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] = {
            {
              ["COMMENT"]            = "Unlock every portal glyph",
              ["VALUE_CHANGE_TABLE"] = {
                {"KnowAllRunes", KnowAllGlyphs},
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] = {
            {
              ["COMMENT"]            = "Portal charging interaction completes instantly",
              ["VALUE_CHANGE_TABLE"] = {
                {"AutoCompleteOnStart", PortalsNeedNoCharge},
              },
            },
          },
        },
      },
    },
  },
}