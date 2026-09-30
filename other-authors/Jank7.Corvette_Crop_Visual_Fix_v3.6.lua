-- Corvette Crop Visual Fix
-- Author: Jank
-- Build v3.6 -- NMS 7.04 / MBINCompiler 7.04.0.1
--
-- v3.1: particle fix changed from REMOVE to a value edit (Effect blanked).
-- CONFIRMED (Jank-tested 2026-09-26): same behaviour as v3.0.
--
-- v3.2: EXML_CREATE TRUE. CONFIRMED (Jank-tested 2026-09-26): scope fix does
-- NOT apply as EXML -- harvest still hits the whole ship. Likely because
-- vanilla's Action list entries have no _index/_id to target (guess).
--
-- v3.3: bad build. EXML_CREATE line was removed, but AMUMSS defaults to TRUE
-- when it's missing, so entities still shipped as EXML. Ship-wide, as v3.2.
--
-- v3.4: v3.1 with the particle edit (fix #2) removed, whole MBINs.
-- CONFIRMED (Jank-tested 2026-09-26): particle plays, harvested plant does not
-- revert -- fix #2 no longer needed. But the particle fires on every plant
-- aboard: GcParticleAction has its own FindRange (vanilla "Scene"), so it
-- finds every "Data" joint on the ship.
--
-- v3.5 (UNTESTED): GcParticleAction FindRange Scene -> Local. Only change vs
-- v3.4. Expect: particle on the harvested plant only. If no particle at all,
-- try LocalModel next.
--
-- v3.6 (UNTESTED): v3.5 as EXML patches (EXML_CREATE TRUE; scenes stay MBIN).
-- The entities' whole States list is flagged _overwrite (EXML_FLAGS
-- "OVERWRITE", per the AMUMSS script rules), so the patch replaces the list
-- instead of matching the unlabelled Action entries that broke v3.2.
-- BaseBuildingTriggerActions (growth timings) sit outside States, so
-- growth-time EXML patches should still apply. Test alone first, then with
-- Jank7.Crop_Growth_Time_v1.0 rebuilt as EXML.
--
-- Vanilla corvette crops never display their correct growth stage. Harvesting
-- one plant flashed every plant on the ship to seedling, harvest particles
-- fired on every plant aboard, and the harvested plant never updated at all --
-- not in session, and not after a reload. Bases and freighters are unaffected.
--
-- Jank's observation (2026-09-26): vanilla now updates the harvested plant to
-- seedling and it stays there. Possibly changed by a game update. Fix #2 below
-- may no longer be needed; untested.
--
-- Two independent bugs, two fixes:
--
-- 1. SCOPE -- the ship-wide bleed.
--    Growth-stage mesh lookups resolve against the "master model", by
--    case-insensitive SUBSTRING match on node name. On a base each part is its
--    own master model, so the lookup is naturally contained. A corvette merges
--    every module into one ship model, so one plant's state change matches
--    every plant aboard.
--
--    Measured against the vanilla scenes, this is what each action name reaches:
--
--        entity action name   FARMNIP scene        planter scene
--        ROOT, STEP*_STATIC   19 nodes             0
--        STEP0_MESH            0                   0
--        STEP1_MESH            0                   1
--        STEP2_MESH            0                   2  (incl. SUB1STEP2_MESH)
--
--    So crops were also reaching into the carbon planter -- but never the
--    reverse, since no planter action name matches anything in a crop scene.
--    The crops' own STEP*_MESH actions resolve to nothing in their own scenes;
--    they are vestigial, and scoping them costs nothing.
--
--    Fixed by moving each plant's ATTACHMENT from its Data locator up to the
--    scene root -- which brings Root and the PLANTSCALE_ stage meshes into a
--    local lookup's reach -- then setting the activations to UseLocalNode.
--    Note this does not approximate base behaviour, it reproduces it: on a base
--    the master model IS the part's own scene root, so scoping locally from
--    the scene root is exactly the base case.
--
-- 2. THE PARTICLE ATTACH -- the harvested plant never updating.
--    STEP0_ENTER contained a GcParticleAction spawning PLANTHARVEST at the Data
--    joint. Spawning it forces the engine to re-instantiate the model to attach
--    the emitter, and that rebuild restores node active states from the stored
--    stage -- wiping the seven node writes that just executed in the same
--    trigger. Removing the particle removes the rebuild.
--
--    Evidence, in the order it turned up:
--      * STEP0_ENTER and STEP0 issue IDENTICAL node activations -- the same
--        seven, in the same order. STEP0_ENTER merely appends the audio and
--        the particle. So the two should be interchangeable. They are not.
--      * On a BASE, with no merged model and nothing to bleed from, the sound
--        and particle fire instantly while the model stays mature. The writes
--        execute and are undone in the same frame.
--      * STEP0 has no particle, and paints reliably.
--      * A delay on STEP0's GcStateTimeEvent also worked, on base and corvette
--        alike -- because the rebuild has finished by the time it fires.
--      * The corvette is worse only because rebuilding a merged ship model
--        takes far longer than one plant, stretching the window past STEP0's
--        elapsed 1 so even it loses.
--
--    STEP0_ENTER's node writes have therefore never had a visible effect
--    anywhere, in vanilla or modded. STEP0 has always been what paints the
--    plant. That is the whole bug.
--
-- Cost: no harvest particle burst. GcPlayAudioAction is a separate sibling
-- action, so UI_Vegetable_Collect still plays, as does the item pickup sound.
-- All vanilla timings are untouched -- harvest response is full speed.
--
-- TESTED DEAD ENDS -- all of these reintroduce the revert:
--   * partial removal of _ENTER states
--   * grafting the audio/particle actions into the STEP0 state
--   * respacing the timeline
--   * reordering the STEP0_ENTER / STEP0 pair
--   * splitting the triggers
--   * pointing GcSimpleInteractionComponentData.TriggerAction at STEP0_ENTER.
--     This one looks like it should work and does not -- it aims the harvest at
--     the one state whose writes get rebuilt over, and STEP0 then never fires
--     from the interaction at all.
--
-- Superseded approaches, kept here so they are not retried:
--   * Setting STEP0's BaseBuildingTriggerActions Time from 1 to 0 (v1.0-v1.3).
--     Worked, but only by moving the writer ahead of the rebuild, and it
--     suppressed STEP0_ENTER as a side effect. Depended on undocumented
--     tie-break behaviour between two entries sharing a timestamp.
--   * A delay on STEP0's GcStateTimeEvent Seconds. Also worked, and kept the
--     particle, but cost a multi-second lag on EVERY harvest including on
--     bases, and the value was hardware-dependent.
--   Removing the particle fixes the cause instead of outrunning it, keeps
--   vanilla timings, and needs no tuned constants.
--
-- 3. THE PLANTER. The same master-model scope breaks the carbon planter
--    (wall shelves variant). Its growth-stage meshes sit as SIBLINGS of the
--    node holding its ATTACHMENT, so a local lookup cannot reach them until
--    the attachment is hoisted to the scene root. Hoisting is a zero-offset
--    move -- the Planter node is at origin with identity rotation and scale.
--    Once localized, harvesting one planter no longer flips every planter
--    aboard, and its stray Activate on a STEP0_MESH node that does not exist
--    in its own scene stops reaching other parts ship-wide.
--
--    The planter has no particle action and no _ENTER states, so it needs the
--    scope fix only.
--
-- The state machine itself is otherwise untouched -- no states or timings are
-- changed -- so this should survive game updates better than a structural edit.
--
-- Growth-time mods edit the same entity files (BaseBuildingTriggerActions
-- Time only). v3.6 ships entities as EXML with States overwritten; see above.

NMS_MOD_DEFINITION_CONTAINER =
{
	["EXML_CREATE"]     = "TRUE",
	["MOD_FILENAME"]    = "Jank7.Corvette_Crop_Visual_Fix_v3.6",
	["MOD_DESCRIPTION"] = "Corvette planter crops and carbon planters display their correct growth stage. Fixes ship-wide mesh flashing, ship-wide harvest particles, and harvested plants never updating. Vanilla timings, no delay.",
	["MOD_AUTHOR"]      = "Jank",
	["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
			-- ======== SCENES: move ATTACHMENT to the scene root ========
			-- All 12 crop scenes share the same root attribute layout --
			-- GEOMETRY(0), LODDIST1(1), NUMLODS(2) -- so the new one is _index 3.
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMALBUMEN.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMALBUMEN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMBARREN.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMBARREN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMDEADCREATURE.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMDEADCREATURE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMGRAVITINO.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMLUSH\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMNIP.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMNIP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMPOOP.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMPOOP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMRADIOACTIVE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSCORCHED\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMTOXIC.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMVENOMSAC.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},

			-- ======== ENTITIES ========
			-- All 12 are structurally identical apart from Id and display strings.
				{
					["MBIN_FILE_SOURCE"] = {
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMALBUMEN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMBARREN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMDEADCREATURE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMGRAVITINO/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMNIP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMPOOP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMTOXIC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMVENOMSAC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
					},
					["MXML_CHANGE_TABLE"] =
					{
						-- Particle scope: vanilla FindRange "Scene" spawns PLANTHARVEST at every
						-- "Data" joint on the ship. GcParticleAction occurs once per entity.
						{
							["SPECIAL_KEY_WORDS"] = {"Action","GcParticleAction"},
							["VALUE_CHANGE_TABLE"] = { {"BroadcastLevel", "Local"}, }
						},

						-- Whole-file scope flags.
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"UseMasterModel", "false"},
								{"UseLocalNode",   "true"},
							}
						},

						-- EXML: overwrite the whole States list. StateID "BOOT" selects the BOOT
						-- state; one level up is the States container. Keep last.
						{
							["SPECIAL_KEY_WORDS"]  = {"StateID","BOOT"},
							["SECTION_UP_SPECIAL"] = 1,
							["EXML_FLAGS"]         = "OVERWRITE",
						},
					}
				},

			-- ======== CARBON PLANTER (WALL SHELVES): scene ========
			-- ATTACHMENT sits on the Planter MESH node, but STEP1_MESH and STEP2_MESH
			-- are its SIBLINGS -- outside local scope. Planter is at origin with an
			-- identity transform, so hoisting to the scene root moves nothing.
			-- Root attributes are GEOMETRY(0) and NUMLODS(1) -- no LODDIST1 here --
			-- so the new one is _index 2, not 3 as on the crop scenes.
			-- Both NUMLODS and ATTACHMENT occur exactly once in the file, and there is
			-- no HASATTACHMENT, so substring matching is safe on both anchors.
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/PLANTER_WALLSHELVES.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{ ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"}, ["REMOVE"] = "SECTION" },
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = [[
<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
  <Property name="Name" value="ATTACHMENT" />
  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PLANTER_WALLSHELVES\ENTITIES\PLANTERWALLSHELVES.ENTITY.MBIN" />
</Property>
]]
						},
					}
				},

			-- ======== CARBON PLANTER (WALL SHELVES): entity ========
			-- 9 GcNodeActivationActions, all master-model. No _ENTER states and STEP0
			-- already sits at Time 0, so no timing edit. No particle, so no
			-- BroadcastLevel. The scope flags are the whole fix.
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/PLANTER_WALLSHELVES/ENTITIES/PLANTERWALLSHELVES.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"UseMasterModel", "false"},
								{"UseLocalNode",   "true"},
							}
						},

						-- EXML: overwrite the whole States list, as for the crops. Keep last.
						{
							["SPECIAL_KEY_WORDS"]  = {"StateID","BOOT"},
							["SECTION_UP_SPECIAL"] = 1,
							["EXML_FLAGS"]         = "OVERWRITE",
						},
					}
				},
			}
		},
	}
}