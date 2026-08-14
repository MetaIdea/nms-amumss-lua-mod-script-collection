-- =============================================================================
-- TranslatorsTeachWords — installed exosuit translators teach you extra words
-- =============================================================================
-- When you learn an alien word, each installed translator tech grants extra
-- permanently-learned words, mirroring its live-translation tier:
--   Artemis' Translator (STORY_TRANSLATE) +1
--   Simple Translator   (UT_TRANSLATE1)   +1
--   Superior Translator (UT_TRANSLATE2)   +2
--   Advanced Translator (UT_TRANSLATE3)   +3
-- Bonuses stack additively (all four installed = +7 per word learned).
--
-- Mechanism: the game keeps a persistent per-race counter of words learned
-- (TWORDS_LEARNT / WWORDS_LEARNT / EWORDS_LEARNT / BWORDS_LEARNT, all in
-- GLOBAL_STATS). This adds one hidden auto-restarting mission per race, each
-- waiting on its own counter; whichever ticks identifies the language of the
-- word just learned, so the mission grants extra words of that race, gated on
-- GcMissionConditionHasTechnology per translator. Because the engine maintains
-- the counters, this covers every word source — including the free "teach me a
-- word" ask, which is granted engine-side with no reward id.
--
-- See docs/RESEARCH.md for why the alternatives do not work, and
-- docs/TEST_PROTOCOL.md for the in-game runs that verified this one.
--
-- Build with AMUMSS >= 5.6.2.0 (NMS >= 5.5 folder-mod output).
-- =============================================================================

-- ============================== CONFIG KNOBS =================================
BONUS_ARTEMIS    = 1              -- STORY_TRANSLATE (Artemis' Translator)
BONUS_SIMPLE     = 1              -- UT_TRANSLATE1   (Simple Translator)
BONUS_SUPERIOR   = 2              -- UT_TRANSLATE2   (Superior Translator)
BONUS_ADVANCED   = 3              -- UT_TRANSLATE3   (Advanced Translator)

CASCADE_GUARD_S  = 5              -- seconds to idle after granting before re-arming the trigger,
                                  -- so the mod's own words cannot re-trigger it. 0 disables.
                                  -- Words learned during the guard window are not boosted.

POPUP_PER_WORD   = true           -- true: N duplicated 1-word items => one popup per word
                                  -- false: single item with AmountMin/Max=N => one popup per grant
SILENT_GRANTS    = false          -- true: RewardChoice=GiveAllSilent, granting no popups at all
-- =============================================================================

-- Mission plumbing. These are not tuning knobs; they mirror what vanilla hidden
-- missions do, and are only here so they are findable if a game update moves them.
local START_TEST       = "AnyFalse"  -- StartConditionTest paired with EMPTY StartingConditions,
                                     -- as on 14 vanilla AutoStart=AllModes missions
                                     -- (AMMO_HINT, T/E/W_WORDSTONE_TUT, ...)
local BEGIN_CHECK_FREQ = 60          -- mission autostart poll seconds (CORE_LORE uses 60)

local TECHS = {
  { id = "STORY_TRANSLATE", bonus = BONUS_ARTEMIS,  debug = "TranslatorsTeachWords: artemis translator bonus"  },
  { id = "UT_TRANSLATE1",   bonus = BONUS_SIMPLE,   debug = "TranslatorsTeachWords: simple translator bonus"   },
  { id = "UT_TRANSLATE2",   bonus = BONUS_SUPERIOR, debug = "TranslatorsTeachWords: superior translator bonus" },
  { id = "UT_TRANSLATE3",   bonus = BONUS_ADVANCED, debug = "TranslatorsTeachWords: advanced translator bonus" },
}

-- The four races with a learnable language.
--   race = GcAlienRace value used on the reward, so words are taught in that language.
--          (Vanilla does the same: TRA_WORD=Traders, WAR_WORD=Warriors, ... Only the
--          knowledge-stone reward uses Race=None, which resolves to the local SYSTEM's
--          race — the reason an earlier build taught Vy'keen words for a Gek conversation.)
--   stat = the GLOBAL_STATS counter the engine increments when a word of that race is
--          learned, from ANY source (verified in STATDEFINITIONSTABLE / STATGROUPSTABLE).
local RACES = {
  { key = "TRA", race = "Traders",   name = "Gek",       stat = "TWORDS_LEARNT" },
  { key = "WAR", race = "Warriors",  name = "Vy'keen",   stat = "WWORDS_LEARNT" },
  { key = "EXP", race = "Explorers", name = "Korvax",    stat = "EWORDS_LEARNT" },
  { key = "BUI", race = "Builders",  name = "Autophage", stat = "BWORDS_LEARNT" },
}

-- =============================================================================
-- REWARDTABLE: MOD_XWORD_<n> entries (cloned from the vanilla WORD entry shape)
-- =============================================================================

local function rewardItemXML(idx, amount, raceValue)
  -- parenthesised so gsub's second return value (the count) is discarded
  return (string.format([[
			<Property name="List" value="GcRewardTableItem" _index="%d">
				<Property name="PercentageChance" value="100.000000" />
				<Property name="LabelID" value="" />
				<Property name="Reward" value="GcRewardTeachWord">
					<Property name="GcRewardTeachWord">
						<Property name="Race" value="GcAlienRace">
							<Property name="AlienRace" value="@RACE@" />
						</Property>
						<Property name="UseCategory" value="false" />
						<Property name="Category" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
						<Property name="AmountMin" value="%d" />
						<Property name="AmountMax" value="%d" />
					</Property>
				</Property>
			</Property>]], idx, amount, amount):gsub("@RACE@", raceValue))
end

local function rewardEntryXML(entryId, n, raceValue)
  local items = {}
  if POPUP_PER_WORD then
    for i = 0, n - 1 do items[#items + 1] = rewardItemXML(i, 1, raceValue) end
  else
    items[1] = rewardItemXML(0, n, raceValue)
  end
  local choice = SILENT_GRANTS and "GiveAllSilent" or "GiveAll"
  -- NOTE: deliberately NO _id="..." attribute. In an EXML patch, _id means "find the
  -- existing section with this id and UPDATE it" — nothing has our ids, so the patch
  -- silently no-ops. Omitting _id makes the game APPEND the section instead.
  return string.format([[
		<Property name="GenericTable" value="GcGenericRewardTableEntry">
			<Property name="Id" value="%s" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="%s" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
%s
				</Property>
			</Property>
		</Property>]], entryId, choice, table.concat(items, "\n"))
end

-- distinct bonus amounts actually in use
local amounts, seenAmount = {}, {}
for _, t in ipairs(TECHS) do
  if t.bonus and t.bonus > 0 and not seenAmount[t.bonus] then
    seenAmount[t.bonus] = true
    amounts[#amounts + 1] = t.bonus
  end
end
table.sort(amounts)

-- One reward entry per race per distinct amount, e.g. MOD_XW_TRA3 (ids must fit
-- NMSString0x10, i.e. 15 usable characters).
local rewardEntryList = {}          -- { {id=, amount=, race=}, ... }
local rewardIdFor = {}              -- rewardIdFor[raceKey][amount] = id

for _, r in ipairs(RACES) do
  rewardIdFor[r.key] = {}
  for _, n in ipairs(amounts) do
    local id = "MOD_XW_" .. r.key .. n
    rewardIdFor[r.key][n] = id
    rewardEntryList[#rewardEntryList + 1] = { id = id, amount = n, race = r.race }
  end
end

-- =============================================================================
-- Mission stage builders (shapes verified against 6.45.1 vanilla serialization)
-- =============================================================================

local function hasTechConditionXML(techId)
  return string.format([[
									<Property name="Conditions" value="GcMissionConditionHasTechnology">
										<Property name="GcMissionConditionHasTechnology">
											<Property name="Technology" value="%s" />
											<Property name="AllowPartiallyInstalled" value="false" />
											<Property name="TeachIfNotKnown" value="false" />
											<Property name="TakeTechFromSeasonData" value="false" />
											<Property name="AllowedToSetPageHint" value="true" />
										</Property>
									</Property>]], techId)
end

-- Grants rewardId only if every condition passes; used once per (race, translator).
local function conditionalRewardStage(idx, rewardId, conditions, debug)
  return string.format([[
				<Property name="Stages" value="GcGenericMissionStage" _index="%d">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceConditionalReward">
						<Property name="GcMissionSequenceConditionalReward">
							<Property name="RewardIfTrue" value="%s" />
							<Property name="RewardIfFalse" value="" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AllTrue" />
							</Property>
							<Property name="Conditions">
%s
							</Property>
							<Property name="DebugText" value="%s" />
						</Property>
					</Property>
				</Property>]], idx, rewardId, conditions, debug)
end

-- Vanilla-proven trigger shape (22 usages, e.g. TREASURE_FOUND / PARTS_PLACED):
-- waits until the stat rises by Amount relative to when the stage began.
local function waitForStatStage(idx, stat, amount, debug)
  return string.format([[
				<Property name="Stages" value="GcGenericMissionStage" _index="%d">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceWaitForStat">
						<Property name="GcMissionSequenceWaitForStat">
							<Property name="Message" value="" />
							<Property name="Stat" value="%s" />
							<Property name="StatGroup" value="GLOBAL_STATS" />
							<Property name="Amount" value="%d" />
							<Property name="AmountMax" value="-1" />
							<Property name="WriteProgressToMissionStat" value="false" />
							<Property name="DebugText" value="%s" />
						</Property>
					</Property>
				</Property>]], idx, stat, amount, debug)
end

-- Idle before re-arming so the mod's own grants cannot re-trigger the stat wait.
local function waitStage(idx, seconds, debug)
  return string.format([[
				<Property name="Stages" value="GcGenericMissionStage" _index="%d">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceWait">
						<Property name="GcMissionSequenceWait">
							<Property name="Time" value="%f" />
							<Property name="MultiplyTimeBySeasonValue" value="false" />
							<Property name="SuppressMessages" value="true" />
							<Property name="DebugText" value="%s" />
						</Property>
					</Property>
				</Property>]], idx, seconds, debug)
end

-- =============================================================================
-- Mission entry template — header/trailer verbatim from vanilla CORE_LORE
-- (STATSTORIESMISSIONTABLE 6.45.1), with only these deltas: MissionID,
-- BeginCheckFrequency, StartConditionTest, StartingConditions,
-- FinalStageVersions emptied, and our own Stages.
-- =============================================================================

-- As with the reward entries: no _id attribute, so the game APPENDs this mission
-- rather than trying to match an existing section that does not exist.
local MISSION_TEMPLATE = [[
		<Property name="Missions" value="GcGenericMissionSequence">
			<Property name="MissionID" value="@MISSION_ID@" />
			<Property name="MissionClass" value="Guide" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
			<Property name="MissionPriority" value="-1" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="@BEGIN_CHECK@" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Never" />
			<Property name="MessageStart" value="Never" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
			</Property>
			<Property name="AutoStart" value="AllModes" />
			<Property name="RestartOnCompletion" value="true" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable" array_size="4">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable" array_size="4">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable" array_size="4">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable" array_size="4">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts" array_size="4">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts" array_size="4">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements" array_size="4">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="@START_TEST@" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
@STARTING_CONDITIONS@
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions" />
			<Property name="Stages">
@STAGES@
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>]]

local EMPTY_STARTING_CONDITIONS = [[			<Property name="StartingConditions" />]]

local function missionXML(missionId, startTest, startingConditionsXML, stagesXML)
  local xml = MISSION_TEMPLATE
  xml = xml:gsub("@MISSION_ID@", missionId)
  xml = xml:gsub("@BEGIN_CHECK@", tostring(BEGIN_CHECK_FREQ))
  xml = xml:gsub("@START_TEST@", startTest)
  xml = xml:gsub("@STARTING_CONDITIONS@", startingConditionsXML)
  xml = xml:gsub("@STAGES@", stagesXML)
  return xml
end

-- =============================================================================
-- Assemble the four missions
-- =============================================================================

-- One mission per race, each waiting on that race's vanilla word counter. Whichever
-- counter ticks identifies the language of the word just learned — no need to know who
-- taught it — so grants are always in the right language, from any source.
local function buildMissions()
  local missions = {}
  for _, r in ipairs(RACES) do
    local stages = {
      waitForStatStage(0, r.stat, 1,
        "TranslatorsTeachWords: wait for a " .. r.name .. " word to be learned"),
    }
    for _, t in ipairs(TECHS) do
      if t.bonus and t.bonus > 0 then
        stages[#stages + 1] = conditionalRewardStage(#stages,
          rewardIdFor[r.key][t.bonus], hasTechConditionXML(t.id),
          string.format("TranslatorsTeachWords: %s +%d for %s", r.name, t.bonus, t.id))
      end
    end
    if CASCADE_GUARD_S and CASCADE_GUARD_S > 0 then
      stages[#stages + 1] = waitStage(#stages, CASCADE_GUARD_S,
        "TranslatorsTeachWords: settle before re-arming so our own words do not retrigger")
    end
    -- ids stay inside NMSString0x10: MOD_XLATE_TRA is 13 chars
    missions[#missions + 1] = missionXML("MOD_XLATE_" .. r.key, START_TEST,
      EMPTY_STARTING_CONDITIONS, table.concat(stages, "\n"))
  end
  return table.concat(missions, "\n")
end

local missionsBody = buildMissions()

-- =============================================================================
-- Change tables
-- =============================================================================

-- Reminder for anyone editing the XML builders above: a section ADDed by an EXML patch
-- must NOT carry an _id attribute (it means "update the existing section with this id",
-- and nothing has ours, so the patch silently does nothing), and the angle brackets in
-- an ADD string must balance or AMUMSS discards the whole ADD with only a warning.
local rewardChanges = {}
for _, e in ipairs(rewardEntryList) do
  rewardChanges[#rewardChanges + 1] = {
    ["COMMENT"]           = "Add " .. e.id .. " (" .. e.amount .. " x " .. e.race ..
                            " word) after the vanilla WORD entry",
    ["SPECIAL_KEY_WORDS"] = { "Id", "WORD" },
    ["ADD_OPTION"]        = "ADDafterSECTION",
    ["ADD"]               = rewardEntryXML(e.id, e.amount, e.race),
  }
end

-- The missions are appended into RECURRINGMISSIONTABLE, after a stable vanilla mission
-- (DM_OVERSEER, its first entry). An EXML patch is used rather than a full MBIN so the
-- mod layers with other mods and survives game updates. MODMISSIONTABLE also works, but
-- only as a full-file MBIN replacement — see docs/FALLBACKS.md.
local recurringChanges = {
  {
    ["COMMENT"]           = "Append the TranslatorsTeachWords missions after the DM_OVERSEER mission",
    ["SPECIAL_KEY_WORDS"] = { "MissionID", "DM_OVERSEER" },
    ["ADD_OPTION"]        = "ADDafterSECTION",
    ["ADD"]               = missionsBody,
  },
}

-- =============================================================================

local mbinChangeTable = {
  {
    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
    ["MXML_CHANGE_TABLE"] = rewardChanges,
  },
  {
    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/MISSIONS/TABLES/RECURRINGMISSIONTABLE.MBIN",
    ["MXML_CHANGE_TABLE"] = recurringChanges,
  },
}

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = "TranslatorsTeachWords",
  ["MOD_DESCRIPTION"] = "Translators earn their slots by permanently teaching you words instead of temporarily translating them. Higher tiered translators teach you more words.",
  ["MOD_AUTHOR"]      = "Stuart",
  ["LUA_AUTHOR"]      = "Stuart & Claude",
  ["MOD_MAINTENANCE"] = "Stuart",
  ["NMS_VERSION"]     = "6.45",
  ["MODIFICATIONS"]   = {
    {
      ["MBIN_CHANGE_TABLE"] = mbinChangeTable,
    },
  },
}