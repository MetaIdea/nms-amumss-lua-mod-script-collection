
----------------------------------------------------------------------------------------
--
-- ( Ctrl + S to save ) 
--
------------------------------------------------------------------------------------------

REDMAS_PROCEDURAL_SPACE_CRASH_MISSION_PRESET ={
	["MODNAME"] = "DERELIC",
	["VISUAL_OVERHAUL_FEATURES"] =
    {
        ["VISUAL_OVERHAUL"] = "OFF",
        ["REDMAS_WATER_REFLECTIONS"] = "OFF",
        ["SPACE_BLUR_FEATURE"] = "OFF",
        ["FILTERS_SWAP_FEATURE"] = "OFF",
        ["BINOCULARS_TYPE"] = "SUN", -- CLEAR / CLEAR
        ["SPEED_EFFECTS_REDUCER_FEATURE"] = "OFF",
        ["SPACESHIPS_TRAILS_TYPE"] = "REALISTIC",  -- (REALISTIC / VANILLA / E3 )
        ["SPACE_COLOURS_TYPE"] = "REALISTIC", -- (REALISTIC / VANILLA / FANTASY )
        ["ASTEROIDS_FIELDS_TYPE"] = "GLUED", -- ("FANTASY" / "REALISTIC" / "GLUED")
        ["FIGHTERS_SPACESHIPS_REPAINT"] = "OFF",
        ["DROPSHIPS_SPACESHIPS_REPAINT"] = "OFF",
        ["SHUTTLE_SPACESHIPS_REPAINT"] = "OFF",
    },
    ["MENU_OVERHAUL_FEATURES"] =
    { -- You can Edit the Pictures inside  RGOG/IMAGES/ to customise the screens
        ["HELLO_GAMES_SPASH_SCREEN"] = "SCIFIFANTASY",  --"HG-E3-1"  or another img name 
        ["ENGINE_SPASH_SCREEN"] = "LIBERTEUS", --"E-E3-1"   or another img name 
        ["NMS_TITLE"] = "TITLE-ATLAS", --"TITLE-WAYPOINT"  -- "TITLE-ATLAS"  or another img name 
        ["MENU_SPLASH_SCREEN"] = "SCIFI-BGM", --"E3-RUINS"  -- SCIFI-BGM -- or your image name
        ["TRANSPARENT_OPTIONS_MENU"] = "ON",
    },
    ["CAMERA_FEATURES"] =
    {
	    ["CAMERA_OVERHAUL_FEATURE"] = "OFF",
	    ["CAMERA_NO_SHAKE_FEATURE"] = "OFF",
	    ["CENTERED_CAMERA_FEATURE"] = "OFF",
    },
    ["GAMEPLAY_FEATURES"] =
    {
        ["GAMEPLAY_OVERHAUL"] = "OFF",
        ["QOL_FEATURES"] =
        {
            ["ADVANCED_BODY_SHAPES_FEATURE"] = "ON",
            ["MINING_SPEED"] = "10", -- 2 to 10 (10 = REDMAS INSTANT MINING mod)
            ["NEW_INTERACTIONS_FEATURE"] = "ON",
            ["ADVANCED_BUILDS_FEATURE"] = "ON",
            ["FREE_POWER_ON_EM_GENERATORS"] = "ON",
        },
        ["ONFOOT_GAMEPLAY_FEATURES"] =
        {
            ["ONFOOT_CONTROLS_REVISON_FEATURE"] = "OFF",
            ["LONGER_STEATH_FEATURE"] = "ON",
            ["FASTER_WALK_WHILE_SHIELDING_FEATURE"] = "ON",
            ["PLAYER_IS_WALKING_INSTEAD_OF_JOGGING_FEATURE"] = "OFF",
            ["CONTROLLED_FALL_ANIMATION_REPLACEMENT"] = "ON",
            ["ONFOOT_COMBAT_REVISON_BETA_FEATURE"] = "OFF",
        },
        ["SPACESHIPS_GAMEPLAY_FEATURES"] =
        {
          ["HOVER_MODE"] = "OFF",
          ["SANKUKAI_SPACESHIPS_COMBAT"] = "OFF",
        },
        ["VEHICLES_FEATURES"] =
        {
            ["EXOCRAFTS_CONTROLS_REVISON_FEATURE"] = "OFF",
            ["ADDITIONAL_EXOCRAFT_DRAGONFLY"] = "ON",
            ["CUSTOM_NOMAD_EXOCRAFT"] = "ON",
            ["CUSTOM_PILGRIM_EXOCRAFT"] = "ON", --  "KANEDA BIKE INSPIRED SKIN"
            ["CUSTOM_COLOSSUS_EXOCRAFT"] = "ON", -- "MAKO-A" ( "Mass Effect" Inspired skin" ( put "OFF" to disable the feature )
            ["CUSTOM_ROAMER_EXOCRAFT"] = "ON",
            ["ROAMER_BIGWHEELS_FEATURE"] = "ON", -- LARGER BEHIND WHEELS
            ["ROAMER_ADDITIONAL_LAMPS_FEATURE"] = "ON",
            ["GIANT_MECHS_BETA_FEATURE"] = "ON",
            ["MECHS_SIZE_MULTIPLIER"] = 1,  -- ( 2 to 10 -- adviced size : 3 )
        },
    },
    ["CREATURES_FEATURES"] =
    {
        ["CREATURES_OVERHAUL"] = "OFF",
        ["CREATURES_HIGH_DENSITY_FEATURE"] = "ON",
        ["MAX_CREATURES_NUMBER"] = 20, -- 10 < - > 20
        ["CREATURES_BEHAVIOURS_IMPROVEMENTS_FEATURE"] = "ON",
        ["SANDWORM_OVERHAUL_FEATURE"] = "ON",
        ["PETS_BEHAVIOURS_AND_RIDING_IMPROVEMENTS_FEATURE"] ="ON",
        ["OVERHAUL_TIMER"] = 2, --( In Hours ) ( 24 H in vanilla ) ( timer used for creatures evolutions steps
        ["FIENDS_SCARY_COMBAT_FEATURE"] = "ON",
        ["GIANTS_CREATURES_FEATURE"] = "ON",
        ["GIANTS_MAX_SIZE"] = "24", -- 8 <-> 94 (8 ( vanilla ) / 114 (very huge.))
    },
    ["GENERATION_FEATURES"] =
    {
        ["GENERATION_OVERHAUL"] = "ON",
        ["COLORS_AUTO_GENERATION_FEATURES"] =
        {
			-- The script will procedurally generate new colours possibilties
			-- different each time the overhaul is generated ( x100 by default).
            ["ULTRA_DIVERSE_SPACE_COLOURS"] = "OFF",
            ["HUGE_WATER_COLORS_DIVERSITY_FEATURE"] = "OFF",
            ["PLANETSKY_COLORS_DIVERSITY_FEATURE"] = "OFF",
        },
        ["PLANETS_GENERATION_FEATURES"] =
        {
            ["TERRAIN_SHAPES_FEATURES"] =
            {
                ["MODDED_TERRAIN_SHAPES_FEATURE"] = "OFF",
                ["E3_STYLE_RESSOURCES_DEPOSITS"] = "OFF", -- ( makes ressources deposits sticking out the planet surface)
                ["TERRAIN_HEIGHT_MAX"] = "340",
            },
            ["BIOMES_FEATURES"] =
            {
                ["CONSTRUCTS_BY_MSSP_SPAWNER"] = "OFF",  -- ( Requires "_MOD.MSSP.ConstructsVisions.Core.pak" from  https://www.nexusmods.com/nomanssky/mods/323)
                ["FANTASY_BIOMES_FEATURE"] = "OFF",
                ["SKY_BIOMES_FEATURE"] = "OFF",
                ["STORM_BIOMES_FEATURES"] = "OFF",
                ["GIANTS_BIOMES_FEATURE"] = "OFF",
                ["LOWWATER_AND_BEACH_BIOMES_FEATURE"] = "OFF",
                ["MONTAINS_BIOMES_FEATURE"] = "OFF",
                ["CAVE_BIOMES_FEATURE"] = "OFF",
            },
            ["ASSETS_REPLACEMENTS_FEATURES"] =
            {
                ["E3_FANTASY_ASSETS_FEATURES"] = "OFF",
                ["E3_FANTASY_WORSTONES_ASSETS_FEATURE"] = "OFF",
                ["E3_FANTASY_BEACONS_ASSETS_FEATURE"] = "OFF",
                ["E3_FANTASY_PORTALS_ASSETS_FEATURE"] = "OFF",
                ["E3_FANTASY_DEPOTS_ASSETS_FEATURE"] = "OFF",
                ["E3_FANTASY_CRYSTALS_ASSETS_FEATURE"] = "OFF",
                ["E3_FANTASY_PLANETS_COLORS_FEATURE"] = "OFF",
                ["REDMAS_RUINS_FEATURES"] = "OFF",
                ["LARGE_BUILDINGS_TRADINGPOSTS_FEATURE"] = "OFF",
            },
        },
        ["SPACE_GENERATION_FEATURES"] =
        {
            ["REDMAS_SPACE_GENERATION"] = "ON",
            ["TRADING_ROUTES"] = "OFF",
            ["MASSIVE_FLEET"] = "OFF",
            ["PROCEDURAL_SPACE_CRASHSITE_FOR_SCAVENGING_MISSION"] = "ON",
        },
        ["SPACESHIPS_GENERATION_FEATURES"] =
        {
            ["ADDITIONAL_VARIATIONS_FOR_SHUTTLE_SPACESHIPS"] = "OFF",
            ["ADDITIONAL_VARIATIONS_FOR_FIGHTERS_SPACESHIPS"] = "OFF",
            ["ADDITIONAL_VARIATIONS_FOR_SCIENTICS_SPACESHIPS"] = "OFF",
            ["ADDITIONAL_VARIATIONS_FOR_SCLASS_SPACESHIPS"] = "OFF",
            ["ADDITIONAL_VARIATIONS_FOR_FREIGHTERS_SPACESHIPS"] = "OFF",
        },
    },
    ["SKINS"] =
    {
        ["CHARACTERS_SKINS_FEATURE"] = "OFF",
        -- (E3-DAMAGED or E3)
        ["DRONE_PET_SKIN_FEATURE"] = "OFF",
		["DRONE_PET_SKIN"] = "E3-DAMAGED",
        -- THE-WATCHER  /or/   SPACE-PIRATE /or/     GIRLY       /or/
        -- KORVAX      /or/   OUTLAWS      /or/     TRAVELLER   /or/
        -- VY-KEEN    /or/   ANOMALY      /or/      GEK
        ["CHAR_PRESETS_SKINS"] = "OUTLAWS"
    },
    ["NEWGAME_BONUS_FEATURES"] ={
         ["NEWGAME_BONUSES"] = "OFF",
		-- OUTLAW1 / OUTLAW2 / ALPHA_VECTOR /
		-- PLANETEXPLO2 / PLANETEXPLO3 / PLANETEXPLO4 / PLANETEXPLO5 / PLANETEXPLO6 / PLANETEXPLO7 /
		-- SPACEEXPLO1 / SPACEEXPLO2 / SPACEEXPLO3 / SPACEEXPLO4 / SPACEEXPLO5 / SPACEEXPLO6 / SPACEEXPLO7
		-- BOUNTYHUNTER1 / BOUNTYHUNTER2 / BOUNTYHUNTER3 / BOUNTYHUNTER4 / BOUNTYHUNTER5
        ["STARTING_SHIP"] = "OUTLAW1",
		-- OUTLAW1 / OUTLAW2 / EXPLO1 / SPACE /
		-- EXPLO2 / EXPLO3 / EXPLO4 / EXPLO5 / EXPLO6 / EXPLO7 /
		-- BOUNTYHUNTER1 / BOUNTYHUNTER2 / BOUNTYHUNTER3 / BOUNTYHUNTER4 / BOUNTYHUNTER5
        ["STARTING_MULTITOOL"] = "OUTLAW1",
    },
    ["CHALLENGE_FEATURES"] =
    {
        ["CHALLENGE_MODE"] = "OFF",
		["STRONG_CREATURES_FEATURE"] = "ON",
        ["HEALTH_MULTIPLIER"] = "4", -- 2 to 6
        ["DARK_UNDERWATER"] = "OFF",
        ["STRONG_PIRATES_FEATURE"] = "OFF",
    },
    ["EASY_MODE_FEATURES"] =
    {
        ["EASY_MODE"] = "OFF",
        ["PULSE_ENGINE_SPEED_MULTIPLIER"] = 4 , -- ( 1 < - > 4 ( too much will be glitchy when entering planets' atmosphere))
        ["LAUNCH_COST_REDUCTION"] = 5 , -- In %
        ["WARPCELL_USAGE_MULTIPLIER"] = 5,
        ["HYPERDRIVE_RANGE_MULTIPLIER"] = 1000,
    }
}
