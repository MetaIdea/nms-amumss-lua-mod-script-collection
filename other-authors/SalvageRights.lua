-- =====================================================================
--  SalvageRights (formerly CorvetteSalvagePlus) - better corvette part
--  salvage, nothing free
-- =====================================================================
--  Verified by decompiling REWARDTABLE.MBIN with MBINCompiler
--  v6.45.0-pre1 on 23 Aug 2026 and reading the fields directly.
--
--  R_SCRAPHEAP  (Salvage Containers on planets)
--    _index 0   40%  generic salvage, GcRewardProceduralProduct   LEAVE AT 40
--    _index 1   40%  one of 35 corvette components             <- raise to 100
--    _index 2  100%  one of 72 hull/trim/connector pieces          unchanged
--    _index 3   10%  CHART_HIVE, GcRewardSpecificProduct           unchanged
--
--  R_SPACEBIGGS  (space wreck salvage)
--    _index 0   10%  generic salvage                               unchanged
--    _index 1   40%  one of 35 corvette components             <- raise to 100
--    _index 2  100%  one of 72 hull/trim/connector pieces          unchanged
--
--  The two 35/72 lists share NO entries. Prices, workshop stock and
--  part trading are untouched.
--
--  ---------------------------------------------------------------
--  TARGETING THE RIGHT 40 IN R_SCRAPHEAP
--  ---------------------------------------------------------------
--  R_SCRAPHEAP holds TWO values of 40: the generic salvage roll
--  (_index 0) and the corvette-component roll (_index 1). A plain
--  VALUE_MATCH raises both, which is what CorvetteSalvagePlus shipped
--  and is not what this mod is for. The generic roll must stay at 40.
--
--  PROVEN BY BUILD, 25 Aug 2026, AMUMSS 5.6.2.0w / MBINCompiler
--  6.45.0.1. Three targeting schemes were built and measured first;
--  only the one below is correct:
--
--    WHERE_IN_SECTION      FAILS. It is a section FILTER, not a
--                          selector. With one PRECEDING_KEY_WORDS the
--                          section is the whole R_SCRAPHEAP entry, a
--                          matching sub-section retains the WHOLE
--                          section, and REPLACE_TYPE ALL then hits
--                          both 40s. Produced 8821c9dd... - the same
--                          bytes as the old broken build.
--    WHERE_IN_SUBSECTION   FAILS. It does narrow to the sub-section,
--                          but the base line becomes the "Reward"
--                          line, which sits BELOW PercentageChance.
--                          Nothing is found. 0 changes.
--    SECTION_ACTIVE with
--    one PKW               FAILS. Only one section is found, so
--                          "[NOTICE] SECTION_ACTIVE values were not
--                          used, some out of range: [1]" and it falls
--                          through to hitting both 40s.
--
--  What works: PRECEDING_KEY_WORDS descends the three nested "List"
--  levels so that each GcRewardTableItem is its own section, and
--  SECTION_ACTIVE picks _index 1. The keyword is "List" - the Property
--  NAME - not "GcRewardTableItem", which is the Property VALUE and is
--  only usable in a SPECIAL_KEY_WORDS pair. That is readable directly
--  from TOOLS\MapFileTrees\METADATA.REALITY.TABLES.REWARDTABLE.MXML.lua,
--  which is the intended way to find valid key words.
--
--  VALUE_MATCH "40" is kept as a guard, not as the selector: if a game
--  update reorders these items, the change simply does not fire and
--  AMUMSS raises a WARNING rather than silently editing the wrong roll.
--
--  RESULT: the built MBIN is md5 9cbd42dd8348d94788c308da550d3276 -
--  byte for byte the file this mod ships.
-- =====================================================================

local ENTRIES = { "R_SCRAPHEAP", "R_SPACEBIGGS" }

local CT = {}
for _, id in ipairs(ENTRIES) do
  table.insert(CT, {
    ["COMMENT"]             = "Guarantee the corvette-component roll in " .. id,
    ["SPECIAL_KEY_WORDS"]   = { "Id", id },
    ["PRECEDING_KEY_WORDS"] = { "List", "List", "List" },
    ["SECTION_ACTIVE"]      = { 1 },
    ["REPLACE_TYPE"]        = "ALL",
    ["VALUE_MATCH"]         = "40",
    ["VALUE_CHANGE_TABLE"]  = { {"PercentageChance", "100"} },
  })
end

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "SalvageRights.pak",
  ["MOD_AUTHOR"]      = "robmac367",
  ["LUA_AUTHOR"]      = "robmac367",
  ["MOD_DESCRIPTION"] = "Corvette salvage always yields a real component - drop rates only, no free parts, generic salvage left at vanilla, prices and trading untouched",
  ["NMS_VERSION"]     = "6.45",

  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["COMMENT"]           = "Guarantee the corvette-component roll; generic salvage left at vanilla",
          ["MBIN_FILE_SOURCE"]  = [[METADATA\REALITY\TABLES\REWARDTABLE.MBIN]],
          ["MXML_CHANGE_TABLE"] = CT,
        },
      },
    },
  },
}
