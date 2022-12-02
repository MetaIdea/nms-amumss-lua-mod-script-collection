--
-- REDMAS GAME OVERHAUL BUILDER  -----------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- DONT CHANGE THAT PART -------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
TEST_PRESET ={
	["MODNAME"] = "SCI-FI-FANTASY_GAME-OVERHAUL",
	["VISUAL_OVERHAUL_FEATURES"] =
    {
        ["VISUAL_OVERHAUL"] = "ON",
        ["REDMAS_WATER_REFLECTIONS"] = "ON",
        ["SPACE_BLUR_FEATURE"] = "ON",
        ["FILTERS_SWAP_FEATURE"] = "ON",
        ["BINOCULARS_TYPE"] = "SUN", -- CLEAR / CLEAR
        ["SPEED_EFFECTS_REDUCER_FEATURE"] = "ON",
        ["SPACESHIPS_TRAILS_TYPE"] = "REALISTIC",  -- (REALISTIC / VANILLA / E3 )
        ["SPACE_COLOURS_TYPE"] = "REALISTIC", -- (REALISTIC / VANILLA / FANTASY )
        ["ASTEROIDS_FIELDS_TYPE"] = "GLUED", -- ("FANTASY" / "REALISTIC" / "GLUED")
        ["FIGHTERS_SPACESHIPS_REPAINT"] = "ON",
        ["DROPSHIPS_SPACESHIPS_REPAINT"] = "ON",
        ["SHUTTLE_SPACESHIPS_REPAINT"] = "ON",
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
	    ["CAMERA_OVERHAUL_FEATURE"] = "ON",
	    ["CAMERA_NO_SHAKE_FEATURE"] = "ON",
	    ["CENTERED_CAMERA_FEATURE"] = "ON",
    },
    ["GAMEPLAY_FEATURES"] =
    {
        ["GAMEPLAY_OVERHAUL"] = "ON",
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
            ["ONFOOT_CONTROLS_REVISON_FEATURE"] = "ON",
            ["LONGER_STEATH_FEATURE"] = "ON",
            ["FASTER_WALK_WHILE_SHIELDING_FEATURE"] = "ON",
            ["PLAYER_IS_WALKING_INSTEAD_OF_JOGGING_FEATURE"] = "OFF",
            ["CONTROLLED_FALL_ANIMATION_REPLACEMENT"] = "ON",
            ["ONFOOT_COMBAT_REVISON_BETA_FEATURE"] = "OFF",
        },
        ["SPACESHIPS_GAMEPLAY_FEATURES"] =
        {
          ["HOVER_MODE"] = "ON",
          ["SANKUKAI_SPACESHIPS_COMBAT"] = "ON",
        },
        ["VEHICLES_FEATURES"] =
        {
            ["EXOCRAFTS_CONTROLS_REVISON_FEATURE"] = "ON",
            ["ADDITIONAL_EXOCRAFT_DRAGONFLY"] = "ON",
            ["CUSTOM_NOMAD_EXOCRAFT"] = "ON",
            ["CUSTOM_PILGRIM_EXOCRAFT"] = "ON", --  "KANEDA BIKE INSPIRED SKIN"
            ["CUSTOM_COLOSSUS_EXOCRAFT"] = "ON", -- "MAKO-A" ( "Mass Effect" Inspired skin" ( put "OFF" to disable the feature )
            ["CUSTOM_ROAMER_EXOCRAFT"] = "ON",
            ["ROAMER_BIGWHEELS_FEATURE"] = "ON", -- LARGER BEHIND WHEELS
            ["ROAMER_ADDITIONAL_LAMPS_FEATURE"] = "ON",
            ["GIANT_MECHS_BETA_FEATURE"] = "ON",
            ["MECHS_SIZE_MULTIPLIER"] = 3,  -- ( 2 to 10 -- adviced size : 3 )
        },
    },
    ["CREATURES_FEATURES"] =
    {
        ["CREATURES_OVERHAUL"] = "ON",
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
            ["ULTRA_DIVERSE_SPACE_COLOURS"] = "ON",
            ["HUGE_WATER_COLORS_DIVERSITY_FEATURE"] = "ON",
            ["PLANETSKY_COLORS_DIVERSITY_FEATURE"] = "OFF",
        },
        ["PLANETS_GENERATION_FEATURES"] =
        {
            ["TERRAIN_SHAPES_FEATURES"] =
            {
                ["MODDED_TERRAIN_SHAPES_FEATURE"] = "ON",
                ["E3_STYLE_RESSOURCES_DEPOSITS"] = "OFF", -- ( makes ressources deposits sticking out the planet surface)
                ["TERRAIN_HEIGHT_MAX"] = "340",
            },
            ["BIOMES_FEATURES"] =
            {
                ["CONSTRUCTS_BY_MSSP_SPAWNER"] = "ON",  -- ( Requires "_MOD.MSSP.ConstructsVisions.Core.pak" from  https://www.nexusmods.com/nomanssky/mods/323)
                ["FANTASY_BIOMES_FEATURE"] = "ON",
                ["SKY_BIOMES_FEATURE"] = "ON",
                ["STORM_BIOMES_FEATURES"] = "ON",
                ["GIANTS_BIOMES_FEATURE"] = "ON",
                ["LOWWATER_AND_BEACH_BIOMES_FEATURE"] = "ON",
                ["MONTAINS_BIOMES_FEATURE"] = "ON",
                ["CAVE_BIOMES_FEATURE"] = "ON",
            },
            ["ASSETS_REPLACEMENTS_FEATURES"] =
            {
                ["E3_FANTASY_ASSETS_FEATURES"] = "ON",
                ["E3_FANTASY_WORSTONES_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_BEACONS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_PORTALS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_DEPOTS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_CRYSTALS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_PLANETS_COLORS_FEATURE"] = "OFF",
                ["REDMAS_RUINS_FEATURES"] = "ON",
                ["LARGE_BUILDINGS_TRADINGPOSTS_FEATURE"] = "ON",
            },
        },
        ["SPACE_GENERATION_FEATURES"] =
        {
            ["REDMAS_SPACE_GENERATION"] = "ON",
            ["TRADING_ROUTES"] = "OFF",
            ["MASSIVE_FLEET"] = "ON",
            ["PROCEDURAL_SPACE_CRASHSITE_FOR_SCAVENGING_MISSION"] = "ON",
        },
        ["SPACESHIPS_GENERATION_FEATURES"] =
        {
            ["ADDITIONAL_VARIATIONS_FOR_SHUTTLE_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_FIGHTERS_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_SCIENTICS_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_SCLASS_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_FREIGHTERS_SPACESHIPS"] = "ON",
        },
    },
    ["SKINS"] =
    {
        ["CHARACTERS_SKINS_FEATURE"] = "ON",
        -- (E3-DAMAGED or E3)
        ["DRONE_PET_SKIN_FEATURE"] = "ON",
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
        ["EASY_MODE"] = "ON",
        ["PULSE_ENGINE_SPEED_MULTIPLIER"] = 4 , -- ( 1 < - > 4 ( too much will be glitchy when entering planets' atmosphere))
        ["LAUNCH_COST_REDUCTION"] = 5 , -- In %
        ["WARPCELL_USAGE_MULTIPLIER"] = 5,
        ["HYPERDRIVE_RANGE_MULTIPLIER"] = 1000,
    }
}
-- this preset is hidden - because it s for OUTLAWS
ARCADIA_PRESET ={
	["MODNAME"] = "GAME-OVERHAUL_FOR_OUTLAWS",
	["VISUAL_OVERHAUL_FEATURES"] =
    {
        ["VISUAL_OVERHAUL"] = "ON",
        ["REDMAS_WATER_REFLECTIONS"] = "ON",
        ["SPACE_BLUR_FEATURE"] = "ON",
        ["FILTERS_SWAP_FEATURE"] = "ON",
        ["BINOCULARS_TYPE"] = "SUN", -- CLEAR / CLEAR
        ["SPEED_EFFECTS_REDUCER_FEATURE"] = "ON",
        ["SPACESHIPS_TRAILS_TYPE"] = "REALISTIC",  -- (REALISTIC / VANILLA / E3 )
        ["SPACE_COLOURS_TYPE"] = "REALISTIC", -- (REALISTIC / VANILLA / FANTASY )
        ["ASTEROIDS_FIELDS_TYPE"] = "FANTASY", -- ("FANTASY" / "REALISTIC" / "GLUED")
        ["FIGHTERS_SPACESHIPS_REPAINT"] = "OFF",
        ["DROPSHIPS_SPACESHIPS_REPAINT"] = "OFF",
        ["SHUTTLE_SPACESHIPS_REPAINT"] = "OFF",
    },
    ["MENU_OVERHAUL_FEATURES"] =
    { -- You can Edit the Pictures inside  RGOG/IMAGES/ to customise the screens
        ["HELLO_GAMES_SPASH_SCREEN"] = "LARGEBACKDROP",  --"HG-E3-1"  or another img name 
        ["ENGINE_SPASH_SCREEN"] = "FANTASY_OUTLAWS", --"E-E3-1"   or another img name 
        ["NMS_TITLE"] = "TITLE-ATLAS", --"TITLE-WAYPOINT"  -- "TITLE-ATLAS"  or another img name 
        ["MENU_SPLASH_SCREEN"] = "REDMAS_HISTORY_BG", --"E3-RUINS"  -- SCIFI-BGM -- or your image name
        ["TRANSPARENT_OPTIONS_MENU"] = "ON",
    },
    ["CAMERA_FEATURES"] =
    {
	    ["CAMERA_OVERHAUL_FEATURE"] = "ON",
	    ["CAMERA_NO_SHAKE_FEATURE"] = "ON",
	    ["CENTERED_CAMERA_FEATURE"] = "OFF",
    },
    ["GAMEPLAY_FEATURES"] =
    {
        ["GAMEPLAY_OVERHAUL"] = "ON",
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
            ["ONFOOT_CONTROLS_REVISON_FEATURE"] = "ON",
            ["LONGER_STEATH_FEATURE"] = "ON",
            ["FASTER_WALK_WHILE_SHIELDING_FEATURE"] = "ON",
            ["PLAYER_IS_WALKING_INSTEAD_OF_JOGGING_FEATURE"] = "ON",
            ["CONTROLLED_FALL_ANIMATION_REPLACEMENT"] = "ON",
            ["ONFOOT_COMBAT_REVISON_BETA_FEATURE"] = "ON",
        },
        ["SPACESHIPS_GAMEPLAY_FEATURES"] =
        {
          ["HOVER_MODE"] = "ON",
          ["SANKUKAI_SPACESHIPS_COMBAT"] = "ON",
        },
        ["VEHICLES_FEATURES"] =
        {
            ["EXOCRAFTS_CONTROLS_REVISON_FEATURE"] = "ON",
            ["ADDITIONAL_EXOCRAFT_DRAGONFLY"] = "ON",
            ["CUSTOM_NOMAD_EXOCRAFT"] = "ON",
            ["CUSTOM_PILGRIM_EXOCRAFT"] = "ON", --  "KANEDA BIKE INSPIRED SKIN"
            ["CUSTOM_COLOSSUS_EXOCRAFT"] = "ON", -- "MAKO-A" ( "Mass Effect" Inspired skin" ( put "OFF" to disable the feature )
            ["CUSTOM_ROAMER_EXOCRAFT"] = "ON",
            ["ROAMER_BIGWHEELS_FEATURE"] = "ON", -- LARGER BEHIND WHEELS
            ["ROAMER_ADDITIONAL_LAMPS_FEATURE"] = "OFF",
            ["GIANT_MECHS_BETA_FEATURE"] = "OFF",
            ["MECHS_SIZE_MULTIPLIER"] = 3,  -- ( 2 to 10 -- adviced size : 3 )
        },
    },
    ["CREATURES_FEATURES"] =
    {
        ["CREATURES_OVERHAUL"] = "ON",
        ["CREATURES_HIGH_DENSITY_FEATURE"] = "ON",
        ["MAX_CREATURES_NUMBER"] = 20, -- 10 < - > 20
        ["CREATURES_BEHAVIOURS_IMPROVEMENTS_FEATURE"] = "ON",
        ["SANDWORM_OVERHAUL_FEATURE"] = "ON",
        ["PETS_BEHAVIOURS_AND_RIDING_IMPROVEMENTS_FEATURE"] ="ON",
        ["OVERHAUL_TIMER"] = 2, --( In Hours ) ( 24 H in vanilla ) ( timer used for creatures evolutions steps
        ["FIENDS_SCARY_COMBAT_FEATURE"] = "ON",
        ["GIANTS_CREATURES_FEATURE"] = "OFF",
        ["GIANTS_MAX_SIZE"] = "24", -- 8 <-> 94 (8 ( vanilla ) / 114 (very huge.))
    },
    ["GENERATION_FEATURES"] =
    {
        ["GENERATION_OVERHAUL"] = "ON",
        ["COLORS_AUTO_GENERATION_FEATURES"] =
        {
			-- The script will procedurally generate new colours possibilties
			-- different each time the overhaul is generated ( x100 by default).
            ["ULTRA_DIVERSE_SPACE_COLOURS"] = "ON",
            ["HUGE_WATER_COLORS_DIVERSITY_FEATURE"] = "ON",
            ["PLANETSKY_COLORS_DIVERSITY_FEATURE"] = "OFF",
        },
        ["PLANETS_GENERATION_FEATURES"] =
        {
            ["TERRAIN_SHAPES_FEATURES"] =
            {
                ["MODDED_TERRAIN_SHAPES_FEATURE"] = "EUPHORIA", -- "OFF" / "EUPHORIA" / "SCI_FI_FANTASY" / "EPIC_FANTASY"
                ["E3_STYLE_RESSOURCES_DEPOSITS"] = "OFF", -- ( makes ressources deposits sticking out the planet surface)
                ["TERRAIN_HEIGHT_MAX"] = "340",
            },
            ["BIOMES_FEATURES"] =
            {
                ["CONSTRUCTS_BY_MSSP_SPAWNER"] = "ON",  -- ( Requires "_MOD.MSSP.ConstructsVisions.Core.pak" from  https://www.nexusmods.com/nomanssky/mods/323)
                ["FANTASY_BIOMES_FEATURE"] = "ON",
                ["SKY_BIOMES_FEATURE"] = "ON",
                ["STORM_BIOMES_FEATURES"] = "ON",
                ["GIANTS_BIOMES_FEATURE"] = "ON",
                ["LOWWATER_AND_BEACH_BIOMES_FEATURE"] = "ON",
                ["MONTAINS_BIOMES_FEATURE"] = "ON",
                ["CAVE_BIOMES_FEATURE"] = "ON",
            },
            ["ASSETS_REPLACEMENTS_FEATURES"] =
            {
                ["E3_FANTASY_ASSETS_FEATURES"] = "ON",
                ["E3_FANTASY_WORSTONES_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_BEACONS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_PORTALS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_DEPOTS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_CRYSTALS_ASSETS_FEATURE"] = "ON",
                ["E3_FANTASY_PLANETS_COLORS_FEATURE"] = "ON",
                ["REDMAS_RUINS_FEATURES"] = "OFF",
                ["LARGE_BUILDINGS_TRADINGPOSTS_FEATURE"] = "ON",
            },
        },
        ["SPACE_GENERATION_FEATURES"] =
        {
            ["REDMAS_SPACE_GENERATION"] = "ON",
            ["TRADING_ROUTES"] = "OFF",
            ["MASSIVE_FLEET"] = "ON",
            ["PROCEDURAL_SPACE_CRASHSITE_FOR_SCAVENGING_MISSION"] = "ON",
        },
        ["SPACESHIPS_GENERATION_FEATURES"] =
        {
            ["ADDITIONAL_VARIATIONS_FOR_SHUTTLE_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_FIGHTERS_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_SCIENTICS_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_SCLASS_SPACESHIPS"] = "ON",
            ["ADDITIONAL_VARIATIONS_FOR_FREIGHTERS_SPACESHIPS"] = "ON",
        },
    },
    ["SKINS"] =
    {
        ["CHARACTERS_SKINS_FEATURE"] = "ON",
        -- (E3-DAMAGED or E3)
        ["DRONE_PET_SKIN_FEATURE"] = "OFF",
		["DRONE_PET_SKIN"] = "E3-DAMAGED",
        -- THE-WATCHER  /or/   SPACE-PIRATE /or/     GIRLY       /or/
        -- KORVAX      /or/   OUTLAWS      /or/     TRAVELLER   /or/
        -- VY-KEEN    /or/   ANOMALY      /or/      GEK
        ["CHAR_PRESETS_SKINS"] = "SPACE-PIRATE"
    },
    ["NEWGAME_BONUS_FEATURES"] ={
         ["NEWGAME_BONUSES"] = "ON",
		-- OUTLAW1 / OUTLAW2 / ALPHA_VECTOR /
		-- PLANETEXPLO2 / PLANETEXPLO3 / PLANETEXPLO4 / PLANETEXPLO5 / PLANETEXPLO6 / PLANETEXPLO7 /
		-- SPACEEXPLO1 / SPACEEXPLO2 / SPACEEXPLO3 / SPACEEXPLO4 / SPACEEXPLO5 / SPACEEXPLO6 / SPACEEXPLO7
		-- BOUNTYHUNTER1 / BOUNTYHUNTER2 / BOUNTYHUNTER3 / BOUNTYHUNTER4 / BOUNTYHUNTER5
        ["STARTING_SHIP"] = "OUTLAW2",
		-- OUTLAW1 / OUTLAW2 / EXPLO1 / SPACE /
		-- EXPLO2 / EXPLO3 / EXPLO4 / EXPLO5 / EXPLO6 / EXPLO7 /
		-- BOUNTYHUNTER1 / BOUNTYHUNTER2 / BOUNTYHUNTER3 / BOUNTYHUNTER4 / BOUNTYHUNTER5
        ["STARTING_MULTITOOL"] = "BOUNTYHUNTER1",
    },
    ["CHALLENGE_FEATURES"] =
    {
        ["CHALLENGE_MODE"] = "ON",
		["STRONG_CREATURES_FEATURE"] = "ON",
        ["HEALTH_MULTIPLIER"] = "4", -- 2 to 6
        ["DARK_UNDERWATER"] = "ON",
        ["STRONG_PIRATES_FEATURE"] = "ON",
    },
    ["EASY_MODE_FEATURES"] =
    {
        ["EASY_MODE"] = "ON",
        ["PULSE_ENGINE_SPEED_MULTIPLIER"] = 4 , -- ( 1 < - > 4 ( too much will be glitchy when entering planets' atmosphere))
        ["LAUNCH_COST_REDUCTION"] = 5 , -- In %
        ["WARPCELL_USAGE_MULTIPLIER"] = 5,
        ["HYPERDRIVE_RANGE_MULTIPLIER"] = 1000,
    }
}

------------------------------------------------------------------------------
CREATUREDATATABLE = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN]]------------------------------------
CREATUREGLOBALS = [[GCCREATUREGLOBALS.MBIN]]--------------------------------------------------------------------
PATH_ECOSYSTEM = [[METADATA\SIMULATION\ECOSYSTEM\]]----------------------------------------------------------
CREATURESMODELS = [[MODELS\PLANETS\CREATURES\]]-------------------------------------------------------------
FREIGHTER_PATH = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\]]------------------------------
SETTLEMENT_PATH = [[METADATA\SIMULATION\SOLARSYSTEM\WFCBUILDINGS\CUBOID3\]]---------------------------------
BUILDINGS_PATH = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\]]------------------------------------------------
---------------------------------------------------------------------------------------------------------------
FEATURES_CHANGE_TABLE = {}-----------------------------------------------------------------------------------
CUSTOM_CONTENT = {}----------------------------------------------------------------------------------------------
CONTENT = {}

--------------------------------------------------------------------------------------------------------------
GIANT_OFTEN_SPAWN =------------------------------------------------------------------------------------------------------------
[[
		<Property name="AutoCollision" value="False" />
						<Property name="CollideWithPlayer" value="True" />
						<Property name="CollideWithPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerShip" value="True" />
						<Property name="DestroyedByTerrainEdit" value="True" />
						<Property name="InvisibleToCamera" value="True" />
						<Property name="CreaturesCanEat" value="False" />
						<Property name="ShearWindStrength" value="0" />
						<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
						<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.6" />
						<Property name="FlatDensity" value="0.00041" />
						<Property name="SlopeDensity" value="0" />
						<Property name="SlopeMultiplier" value="1" />
						<Property name="MaxRegionRadius" value="9999" />
		<Property name="MaxRegionRadius" value="9999" />
		<Property name="MaxImposterRadius" value="9999" />
		<Property name="FadeOutStartDistance" value="9999" />
		<Property name="FadeOutEndDistance" value="9999" />
		<Property name="FadeOutOffsetDistance" value="0" />
		<Property name="LodDistances">
		<Property value="0" />
		<Property value="200" />
		<Property value="600" />
		<Property value="1000" />
		<Property value="1400" />
						</Property>
						</Property>
						<Property name="QualityVariants">

						</Property>
]]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GIANT_SPARSE_SPAWN = ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[[
	<Property name="AutoCollision" value="False" />
						<Property name="CollideWithPlayer" value="True" />
						<Property name="CollideWithPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerShip" value="True" />
						<Property name="DestroyedByTerrainEdit" value="True" />
						<Property name="InvisibleToCamera" value="True" />
						<Property name="CreaturesCanEat" value="False" />
						<Property name="ShearWindStrength" value="0" />
						<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
						<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.3" />
						<Property name="FlatDensity" value="0.0001" />
						<Property name="SlopeDensity" value="0" />
						<Property name="SlopeMultiplier" value="1" />
						<Property name="MaxRegionRadius" value="9999" />
							<Property name="MaxImposterRadius" value="9999" />
							<Property name="FadeOutStartDistance" value="9999" />
							<Property name="FadeOutEndDistance" value="9999" />
							<Property name="FadeOutOffsetDistance" value="9999" />
							<Property name="LodDistances">
							<Property value="0" />
							<Property value="200" />
							<Property value="600" />
							<Property value="1000" />
							<Property value="1400" />
						</Property>
						</Property>
						<Property name="QualityVariants">

						</Property>
]]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[=[
GIANT_RARE_SPAWN = ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[[
	<Property name="AutoCollision" value="False" />
						<Property name="CollideWithPlayer" value="True" />
						<Property name="CollideWithPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerShip" value="True" />
						<Property name="DestroyedByTerrainEdit" value="True" />
						<Property name="InvisibleToCamera" value="True" />
						<Property name="CreaturesCanEat" value="False" />
						<Property name="ShearWindStrength" value="0" />
						<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
						<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.1" />
						<Property name="FlatDensity" value="0.00051" />
						<Property name="SlopeDensity" value="0" />
						<Property name="SlopeMultiplier" value="1" />
						<Property name="MaxRegionRadius" value="9999" />
							<Property name="MaxImposterRadius" value="9999" />
							<Property name="FadeOutStartDistance" value="9999" />
							<Property name="FadeOutEndDistance" value="9999" />
							<Property name="FadeOutOffsetDistance" value="9999" />
							<Property name="LodDistances">
							<Property value="0" />
							<Property value="200" />
							<Property value="600" />
							<Property value="1000" />
							<Property value="1400" />
						</Property>
						</Property>
						<Property name="QualityVariants">

						</Property>
]]
--]=]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[=[
VERY_RARE_SPAWN = ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[[
	<Property name="AutoCollision" value="False" />
						<Property name="CollideWithPlayer" value="True" />
						<Property name="CollideWithPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerVehicle" value="True" />
						<Property name="DestroyedByPlayerShip" value="True" />
						<Property name="DestroyedByTerrainEdit" value="True" />
						<Property name="InvisibleToCamera" value="True" />
						<Property name="CreaturesCanEat" value="False" />
						<Property name="ShearWindStrength" value="0" />
						<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
						<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.1" />
						<Property name="FlatDensity" value="0.00001" />
						<Property name="SlopeDensity" value="0" />
						<Property name="SlopeMultiplier" value="1" />
						<Property name="MaxRegionRadius" value="9999" />
							<Property name="MaxImposterRadius" value="9999" />
							<Property name="FadeOutStartDistance" value="9999" />
							<Property name="FadeOutEndDistance" value="9999" />
							<Property name="FadeOutOffsetDistance" value="9999" />
							<Property name="LodDistances">
							<Property value="0" />
							<Property value="200" />
							<Property value="600" />
							<Property value="1000" />
							<Property value="1400" />
						</Property>
						</Property>
						<Property name="QualityVariants">

						</Property>
]]
--]=]

MODNAME=""
VISUAL_OVERHAUL = ""
CAMERA_OVERHAUL_FEATURE = ""
CAMERA_NO_SHAKE_FEATURE = ""
CENTERED_CAMERA_FEATURE = ""
GAMEPLAY_OVERHAUL = ""
CREATURES_OVERHAUL = ""
GENERATION_OVERHAUL = ""
CHARACTERS_SKINS_FEATURE = ""
NEWGAME_BONUSES = ""
EASY_MODE = ""
CHALLENGE_MODE = ""
-- MENUS PARAMS ----------------------------------------------------------------------------------------------
HELLO_GAMES_SPASH_SCREEN = ""
ENGINE_SPASH_SCREEN = ""
NMS_TITLE = ""
MENU_SPLASH_SCREEN = ""
TRANSPARENT_OPTIONS_MENU = ""
-- VISUAL OVERHAUL PARAMS ------------------------------------------------------------------------------------
REDMAS_WATER_REFLECTIONS = ""
SPACE_BLUR_FEATURE = ""
FILTERS_SWAP_FEATURE = ""
BINOCULARS_TYPE = ""
SPEED_EFFECTS_REDUCER_FEATURE = ""
SPACESHIPS_TRAILS_TYPE = ""
SPACE_COLOURS_TYPE = ""
ULTRA_DIVERSE_SPACE_COLOURS = ""
ASTEROIDS_FIELDS_TYPE = ""
FIGHTERS_SPACESHIPS_REPAINT = ""
DROPSHIPS_SPACESHIPS_REPAINT = ""
SHUTTLE_SPACESHIPS_REPAINT = ""
-- CAMERA OVERHAUL PARAMS ------------------------------------------------------------------------------------
SMALL_SPACESHIPS_MIN_DIST = 0 --- /!\ defiened later, this is var definition
SMALL_SPACESHIPS_MAX_DIST = 0 ---/!\ defiened later, this is var definition
LONG_SPACESHIPS_MIN_DIST = 0 ---/!\ defiened later, this is var definition
LONG_SPACESHIPS_MAX_DIST = 0 ---/!\ defiened later, this is var definition
-- GAMEPLAY OVERHAUL PARAMS ----------------------------------------------------------------------------------
ADVANCED_BODY_SHAPES_FEATURE = ""
MINING_SPEED = 0 ---/!\ defiened later, this is var definition
NEW_INTERACTIONS_FEATURE = ""
ADVANCED_BUILDS_FEATURE = ""
FREE_POWER_ON_EM_GENERATORS = ""
HOVER_MODE = ""
SANKUKAI_SPACESHIPS_COMBAT = ""
ONFOOT_CONTROLS_REVISON_FEATURE = ""
LONGER_STEATH_FEATURE = ""
FASTER_WALK_WHILE_SHIELDING_FEATURE = ""
PLAYER_IS_WALKING_INSTEAD_OF_JOGGING_FEATURE = ""
CONTROLLED_FALL_ANIMATION_REPLACEMENT = ""
EXOCRAFTS_CONTROLS_REVISON_FEATURE = ""
ADDITIONAL_EXOCRAFT_DRAGONFLY = ""
CUSTOM_NOMAD_EXOCRAFT = ""
CUSTOM_ROAMER_EXOCRAFT = ""
ROAMER_BIGWHEELS_FEATURE = ""
ROAMER_ADDITIONAL_LAMPS_FEATURE = ""
CUSTOM_COLOSSUS_EXOCRAFT = ""
CUSTOM_PILGRIM_EXOCRAFT = ""
ONFOOT_COMBAT_REVISON_BETA_FEATURE = ""
GIANT_MECHS_BETA_FEATURE = ""
MECHS_SIZE_MULTIPLIER = 0 ---/!\ defiened later, this is var definition
-- CREATURES PARAMS ------------------------------------------------------------------------------------------
CREATURES_HIGH_DENSITY_FEATURE = ""
MAX_CREATURES_NUMBER = ""
CREATURES_BEHAVIOURS_IMPROVEMENTS_FEATURE =  ""
SANDWORM_OVERHAUL_FEATURE =  ""
PETS_BEHAVIOURS_AND_RIDING_IMPROVEMENTS_FEATURE =  ""
OVERHAUL_TIMER =  ""
FIENDS_SCARY_COMBAT_FEATURE =  ""
GIANTS_CREATURES_FEATURE =  ""
GIANTS_MAX_SIZE =  ""
--  GENERATION PARAMS ---------------------------------------------------------------------------------------
-- SPACESHIPS GENERATION PARAMS ----------------------------------------------------------------------------
ADDITIONAL_VARIATIONS_FOR_SHUTTLE_SPACESHIPS =  ""
ADDITIONAL_VARIATIONS_FOR_FIGHTERS_SPACESHIPS =  ""
ADDITIONAL_VARIATIONS_FOR_SCIENTICS_SPACESHIPS =  ""
ADDITIONAL_VARIATIONS_FOR_SCLASS_SPACESHIPS =  ""
ADDITIONAL_VARIATIONS_FOR_FREIGHTERS_SPACESHIPS =  ""
-- PLANETS GENERATION PARAMS ---------------------------------------------------------------------------------
--voxels params
MODDED_TERRAIN_SHAPES_FEATURE =  ""
E3_STYLE_RESSOURCES_DEPOSITS =  ""
TERRAIN_HEIGHT_MAX =  ""
-- end voxels params
-- ASSETS REWORK params
E3_FANTASY_ASSETS_FEATURES =  ""
E3_FANTASY_WORSTONES_ASSETS_FEATURE =   ""
E3_FANTASY_PORTALS_ASSETS_FEATURE =  ""
E3_FANTASY_BEACONS_ASSETS_FEATURE =  ""
E3_FANTASY_DEPOTS_ASSETS_FEATURE =  ""
E3_FANTASY_CRYSTALS_ASSETS_FEATURE =  ""
E3_FANTASY_PLANETS_COLORS_FEATURE =  ""
REDMAS_RUINS_FEATURES =  ""
-- End Assets Rework params
HUGE_WATER_COLORS_DIVERSITY_FEATURE =  ""
PLANETSKY_COLORS_DIVERSITY_FEATURE =  ""
LARGE_BUILDINGS_TRADINGPOSTS_FEATURE =  ""
-- Biomes param
CONSTRUCTS_BY_MSSP_SPAWNER =  ""
SKY_BIOMES_FEATURE =  ""
FANTASY_BIOMES_FEATURE =  ""
STORM_BIOMES_FEATURES =  ""
GIANTS_BIOMES_FEATURE =  ""
LOWWATER_AND_BEACH_BIOMES_FEATURE =  ""
MONTAINS_BIOMES_FEATURE =  ""
CAVE_BIOMES_FEATURE =  ""
-- End Biomes param
-- SPACE PARAMS ----------------------------------------------------------------------------------------------
REDMAS_SPACE_GENERATION =  ""
TRADING_ROUTES =  ""
MASSIVE_FLEET =  ""
PROCEDURAL_SPACE_CRASHSITE_FOR_SCAVENGING_MISSION =  ""
-- SKINS PARAMS ---------------------------------------------------------------------------------
DRONE_PET_SKIN_FEATURE =  ""
DRONE_PET_SKIN =  ""
CHAR_PRESETS_SKINS =  ""
-- CHALLENGE MODE PARAMS -------------------------------------------------------------------------------------
 STRONG_CREATURES_FEATURE =  ""
 HEALTH_MULTIPLIER =  ""
 DARK_UNDERWATER =  ""
 STRONG_PIRATES_FEATURE =  ""
-- EASY MODE PARAMS ------------------------------------------------------------------------------------------
PULSE_ENGINE_SPEED_MULTIPLIER =  ""
 LAUNCH_COST_REDUCTION =  ""
 WARPCELL_USAGE_MULTIPLIER =  ""
 HYPERDRIVE_RANGE_MULTIPLIER =  ""
STARTING_SHIP = ""
STARTING_MULTITOOL =""
NEWGAME_BONUSES =""
INIT_PRESET = {}
---INIT -----------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
if INIT == "EUPHORIA_PRESET" then
	INIT_PRESET = EUPHORIA_PRESET
end
if INIT == "SCIFI_FANTASY_PRESET" then
	INIT_PRESET = SCIFI_FANTASY_PRESET
end
if INIT == "SCIFI_PRESET" then
	INIT_PRESET = SCIFI_PRESET
end
if INIT == "TEST_PRESET" then
	INIT_PRESET = TEST_PRESET
end
if INIT == "CUSTOM_PRESET" then
	INIT_PRESET = CUSTOM_PRESET
end
if INIT == "INSTANT_MINING_PRESET" then
	INIT_PRESET = INSTANT_MINING_PRESET
end
if INIT == "REDMAS_START_AS_PRESET" then
	INIT_PRESET = REDMAS_START_AS_PRESET
end
if INIT == "METAL_SPACESHIPS_PRESET" then
	INIT_PRESET = METAL_SPACESHIPS_PRESET
end
if INIT == "DARKSPACE_COLORS_PRESET" then
	INIT_PRESET = DARKSPACE_COLORS_PRESET
end
if INIT == "REDMAS_EASY_MODE_PRESET" then
	INIT_PRESET = REDMAS_EASY_MODE_PRESET
end
if INIT == "REDMAS_E3PIC_FANTASY_PRESET" then
	INIT_PRESET = REDMAS_E3PIC_FANTASY_PRESET
end
if INIT == "REDMAS_MENU_REVISION_PRESET" then
	INIT_PRESET = REDMAS_MENU_REVISION_PRESET
end
if INIT == "REDMAS_SPAWNER_FOR_CONSTRUCTS_BY_MSSP_PRESET" then
	INIT_PRESET = REDMAS_SPAWNER_FOR_CONSTRUCTS_BY_MSSP_PRESET
end
if INIT == "REDMAS_SUPER_VEHICLES_PRESET" then
	INIT_PRESET =  REDMAS_SUPER_VEHICLES_PRESET
end
if INIT == "REDMAS_PROCEDURAL_SPACE_CRASH_MISSION_PRESET" then
	INIT_PRESET = REDMAS_PROCEDURAL_SPACE_CRASH_MISSION_PRESET
end
if INIT == "REDMAS_CAMERA_OVERHAUL_PRESET" then
	INIT_PRESET = REDMAS_CAMERA_OVERHAUL_PRESET
end
if INIT == "REDMAS_EXTREME_FANTASY_TERRAIN_PRESET" then
	INIT_PRESET = REDMAS_EXTREME_FANTASY_TERRAIN_PRESET
end
if INIT == "REDMAS_CHALLENGE_MODE_PRESET" then
	INIT_PRESET = REDMAS_CHALLENGE_MODE_PRESET
end
if INIT == "REDMAS_SPACE_OVERHAUL_PRESET" then
	INIT_PRESET = REDMAS_SPACE_OVERHAUL_PRESET
end
if INIT == "REDMAS_SPACESHIPS_GENERATION_PRESET" then
	INIT_PRESET = REDMAS_SPACESHIPS_GENERATION_PRESET
end
if INIT == "PLAYER_GAMEPLAY_REVISION_PRESET" then
	INIT_PRESET = PLAYER_GAMEPLAY_REVISION_PRESET
end
if INIT == "NEW_GAMEPLAY_MECHANICS_PRESET" then
	INIT_PRESET = NEW_GAMEPLAY_MECHANICS_PRESET
end
if INIT == "REDMAS_VISUAL_OVERHAUL_PRESET" then
	INIT_PRESET =  REDMAS_VISUAL_OVERHAUL_PRESET
end
if INIT == "REDMAS_NEW_GAME_BONUSES_PRESET" then
	INIT_PRESET =  REDMAS_NEW_GAME_BONUSES_PRESET
end
if INIT == "REDMAS_SANDWORM_OVERHAUL_PRESET" then
	INIT_PRESET =  REDMAS_SANDWORM_OVERHAUL_PRESET
end
if INIT == "FANTASY_2_PRESET" then
	INIT_PRESET =  FANTASY_2_PRESET
end
if INIT == "FANTASY_ORIGINS_PRESET" then
	 INIT_PRESET = FANTASY_ORIGINS_PRESET
end
if INIT == "FANTASY_SYNTHESIS_PRESET" then
	INIT_PRESET =  FANTASY_SYNTHESIS_PRESET
end
if INIT == "FANTASY_PRESET" then
	INIT_PRESET = FANTASY_PRESET
end
if INIT == "FOR_LIBERTY" then
	INIT_PRESET = ARCADIA_PRESET
end

   -------------------------------------------------------------------------------------
MODNAME = INIT_PRESET.MODNAME
STARTING_SHIP = INIT_PRESET.NEWGAME_BONUS_FEATURES.STARTING_SHIP
STARTING_MULTITOOL = INIT_PRESET.NEWGAME_BONUS_FEATURES.STARTING_MULTITOOL
VISUAL_OVERHAUL = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.VISUAL_OVERHAUL
CAMERA_OVERHAUL_FEATURE = INIT_PRESET.CAMERA_FEATURES.CAMERA_OVERHAUL_FEATURE
CAMERA_NO_SHAKE_FEATURE = INIT_PRESET.CAMERA_FEATURES.CAMERA_NO_SHAKE_FEATURE
CENTERED_CAMERA_FEATURE = INIT_PRESET.CAMERA_FEATURES.CENTERED_CAMERA_FEATURE
GAMEPLAY_OVERHAUL = INIT_PRESET.GAMEPLAY_FEATURES.GAMEPLAY_OVERHAUL
CREATURES_OVERHAUL = INIT_PRESET.CREATURES_FEATURES.CREATURES_OVERHAUL
GENERATION_OVERHAUL = INIT_PRESET.GENERATION_FEATURES.GENERATION_OVERHAUL
CHARACTERS_SKINS_FEATURE = INIT_PRESET.SKINS.CHARACTERS_SKINS_FEATURE
NEWGAME_BONUSES = INIT_PRESET.NEWGAME_BONUS_FEATURES.NEWGAME_BONUSES
EASY_MODE = INIT_PRESET.EASY_MODE_FEATURES.EASY_MODE
CHALLENGE_MODE = INIT_PRESET.CHALLENGE_FEATURES.CHALLENGE_MODE
-- MENUS PARAMS ----------------------------------------------------------------------------------------------
HELLO_GAMES_SPASH_SCREEN = INIT_PRESET.MENU_OVERHAUL_FEATURES.HELLO_GAMES_SPASH_SCREEN
ENGINE_SPASH_SCREEN = INIT_PRESET.MENU_OVERHAUL_FEATURES.ENGINE_SPASH_SCREEN
NMS_TITLE = INIT_PRESET.MENU_OVERHAUL_FEATURES.NMS_TITLE
-- I will update this on Nexus with new updates theme / visuals
 -- You can Edit or Replace the Pictures inside  RGOG/IMAGES/ to customise the Title
MENU_SPLASH_SCREEN = INIT_PRESET.MENU_OVERHAUL_FEATURES.MENU_SPLASH_SCREEN
TRANSPARENT_OPTIONS_MENU = INIT_PRESET.MENU_OVERHAUL_FEATURES.TRANSPARENT_OPTIONS_MENU
-- VISUAL OVERHAUL PARAMS ------------------------------------------------------------------------------------
REDMAS_WATER_REFLECTIONS = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.REDMAS_WATER_REFLECTIONS
SPACE_BLUR_FEATURE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.SPACE_BLUR_FEATURE
FILTERS_SWAP_FEATURE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.FILTERS_SWAP_FEATURE
BINOCULARS_TYPE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.BINOCULARS_TYPE
SPEED_EFFECTS_REDUCER_FEATURE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.SPEED_EFFECTS_REDUCER_FEATURE
SPACESHIPS_TRAILS_TYPE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.SPACESHIPS_TRAILS_TYPE
SPACE_COLOURS_TYPE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.SPACE_COLOURS_TYPE
ULTRA_DIVERSE_SPACE_COLOURS = INIT_PRESET.GENERATION_FEATURES.COLORS_AUTO_GENERATION_FEATURES.ULTRA_DIVERSE_SPACE_COLOURS
ASTEROIDS_FIELDS_TYPE = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.ASTEROIDS_FIELDS_TYPE
FIGHTERS_SPACESHIPS_REPAINT = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.FIGHTERS_SPACESHIPS_REPAINT
DROPSHIPS_SPACESHIPS_REPAINT = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.DROPSHIPS_SPACESHIPS_REPAINT
SHUTTLE_SPACESHIPS_REPAINT = INIT_PRESET.VISUAL_OVERHAUL_FEATURES.SHUTTLE_SPACESHIPS_REPAINT
-- CAMERA OVERHAUL PARAMS ------------------------------------------------------------------------------------
SMALL_SPACESHIPS_MIN_DIST = 5 -- (if CAMERA_OVERHAUL_FEATURE == "ON" )
SMALL_SPACESHIPS_MAX_DIST = 40 -- (if CAMERA_OVERHAUL_FEATURE == "ON" )
LONG_SPACESHIPS_MIN_DIST = 5 -- (if CAMERA_OVERHAUL_FEATURE == "ON" )
LONG_SPACESHIPS_MAX_DIST = 50 -- (if CAMERA_OVERHAUL_FEATURE == "ON" )
-- GAMEPLAY OVERHAUL PARAMS ----------------------------------------------------------------------------------
ADVANCED_BODY_SHAPES_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.QOL_FEATURES.ADVANCED_BODY_SHAPES_FEATURE
MINING_SPEED = INIT_PRESET.GAMEPLAY_FEATURES.QOL_FEATURES.MINING_SPEED
NEW_INTERACTIONS_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.QOL_FEATURES.NEW_INTERACTIONS_FEATURE
ADVANCED_BUILDS_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.QOL_FEATURES.ADVANCED_BUILDS_FEATURE
FREE_POWER_ON_EM_GENERATORS = INIT_PRESET.GAMEPLAY_FEATURES.QOL_FEATURES.FREE_POWER_ON_EM_GENERATORS
HOVER_MODE = INIT_PRESET.GAMEPLAY_FEATURES.SPACESHIPS_GAMEPLAY_FEATURES.HOVER_MODE
SANKUKAI_SPACESHIPS_COMBAT = INIT_PRESET.GAMEPLAY_FEATURES.SPACESHIPS_GAMEPLAY_FEATURES.SANKUKAI_SPACESHIPS_COMBAT
ONFOOT_CONTROLS_REVISON_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.ONFOOT_GAMEPLAY_FEATURES.ONFOOT_CONTROLS_REVISON_FEATURE
LONGER_STEATH_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.ONFOOT_GAMEPLAY_FEATURES.LONGER_STEATH_FEATURE
FASTER_WALK_WHILE_SHIELDING_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.ONFOOT_GAMEPLAY_FEATURES.FASTER_WALK_WHILE_SHIELDING_FEATURE
PLAYER_IS_WALKING_INSTEAD_OF_JOGGING_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.ONFOOT_GAMEPLAY_FEATURES.PLAYER_IS_WALKING_INSTEAD_OF_JOGGING_FEATURE
CONTROLLED_FALL_ANIMATION_REPLACEMENT = INIT_PRESET.GAMEPLAY_FEATURES.ONFOOT_GAMEPLAY_FEATURES.CONTROLLED_FALL_ANIMATION_REPLACEMENT
EXOCRAFTS_CONTROLS_REVISON_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.EXOCRAFTS_CONTROLS_REVISON_FEATURE
ADDITIONAL_EXOCRAFT_DRAGONFLY = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.ADDITIONAL_EXOCRAFT_DRAGONFLY
CUSTOM_NOMAD_EXOCRAFT = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.CUSTOM_NOMAD_EXOCRAFT
CUSTOM_ROAMER_EXOCRAFT = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.CUSTOM_ROAMER_EXOCRAFT
ROAMER_BIGWHEELS_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.ROAMER_BIGWHEELS_FEATURE
ROAMER_ADDITIONAL_LAMPS_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.ROAMER_ADDITIONAL_LAMPS_FEATURE
CUSTOM_COLOSSUS_EXOCRAFT = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.CUSTOM_COLOSSUS_EXOCRAFT
CUSTOM_PILGRIM_EXOCRAFT = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.CUSTOM_PILGRIM_EXOCRAFT
ONFOOT_COMBAT_REVISON_BETA_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.ONFOOT_GAMEPLAY_FEATURES.ONFOOT_COMBAT_REVISON_BETA_FEATURE
GIANT_MECHS_BETA_FEATURE = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.GIANT_MECHS_BETA_FEATURE
MECHS_SIZE_MULTIPLIER = INIT_PRESET.GAMEPLAY_FEATURES.VEHICLES_FEATURES.MECHS_SIZE_MULTIPLIER
-- CREATURES PARAMS ------------------------------------------------------------------------------------------
CREATURES_HIGH_DENSITY_FEATURE = INIT_PRESET.CREATURES_FEATURES.CREATURES_HIGH_DENSITY_FEATURE
MAX_CREATURES_NUMBER = INIT_PRESET.CREATURES_FEATURES.MAX_CREATURES_NUMBER
CREATURES_BEHAVIOURS_IMPROVEMENTS_FEATURE = INIT_PRESET.CREATURES_FEATURES.CREATURES_BEHAVIOURS_IMPROVEMENTS_FEATURE
SANDWORM_OVERHAUL_FEATURE = INIT_PRESET.CREATURES_FEATURES.SANDWORM_OVERHAUL_FEATURE
PETS_BEHAVIOURS_AND_RIDING_IMPROVEMENTS_FEATURE = INIT_PRESET.CREATURES_FEATURES.PETS_BEHAVIOURS_AND_RIDING_IMPROVEMENTS_FEATURE
OVERHAUL_TIMER = INIT_PRESET.CREATURES_FEATURES.OVERHAUL_TIMER
FIENDS_SCARY_COMBAT_FEATURE = INIT_PRESET.CREATURES_FEATURES.FIENDS_SCARY_COMBAT_FEATURE
GIANTS_CREATURES_FEATURE = INIT_PRESET.CREATURES_FEATURES.GIANTS_CREATURES_FEATURE
GIANTS_MAX_SIZE = INIT_PRESET.CREATURES_FEATURES.GIANTS_MAX_SIZE
--  GENERATION PARAMS ---------------------------------------------------------------------------------------
-- SPACESHIPS GENERATION PARAMS ----------------------------------------------------------------------------
ADDITIONAL_VARIATIONS_FOR_SHUTTLE_SPACESHIPS = INIT_PRESET.GENERATION_FEATURES.SPACESHIPS_GENERATION_FEATURES.ADDITIONAL_VARIATIONS_FOR_SHUTTLE_SPACESHIPS
ADDITIONAL_VARIATIONS_FOR_FIGHTERS_SPACESHIPS = INIT_PRESET.GENERATION_FEATURES.SPACESHIPS_GENERATION_FEATURES.ADDITIONAL_VARIATIONS_FOR_FIGHTERS_SPACESHIPS
ADDITIONAL_VARIATIONS_FOR_SCIENTICS_SPACESHIPS = INIT_PRESET.GENERATION_FEATURES.SPACESHIPS_GENERATION_FEATURES.ADDITIONAL_VARIATIONS_FOR_SCIENTICS_SPACESHIPS
ADDITIONAL_VARIATIONS_FOR_SCLASS_SPACESHIPS = INIT_PRESET.GENERATION_FEATURES.SPACESHIPS_GENERATION_FEATURES.ADDITIONAL_VARIATIONS_FOR_SCLASS_SPACESHIPS
ADDITIONAL_VARIATIONS_FOR_FREIGHTERS_SPACESHIPS = INIT_PRESET.GENERATION_FEATURES.SPACESHIPS_GENERATION_FEATURES.ADDITIONAL_VARIATIONS_FOR_FREIGHTERS_SPACESHIPS
-- PLANETS GENERATION PARAMS ---------------------------------------------------------------------------------
--voxels params
MODDED_TERRAIN_SHAPES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.TERRAIN_SHAPES_FEATURES.MODDED_TERRAIN_SHAPES_FEATURE
E3_STYLE_RESSOURCES_DEPOSITS = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.TERRAIN_SHAPES_FEATURES.E3_STYLE_RESSOURCES_DEPOSITS
TERRAIN_HEIGHT_MAX = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.TERRAIN_SHAPES_FEATURES.TERRAIN_HEIGHT_MAX
-- end voxels params
-- ASSETS REWORK params
E3_FANTASY_ASSETS_FEATURES = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_ASSETS_FEATURES
E3_FANTASY_WORSTONES_ASSETS_FEATURE =  INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_WORSTONES_ASSETS_FEATURE
E3_FANTASY_PORTALS_ASSETS_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_PORTALS_ASSETS_FEATURE
E3_FANTASY_BEACONS_ASSETS_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_BEACONS_ASSETS_FEATURE
E3_FANTASY_DEPOTS_ASSETS_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_DEPOTS_ASSETS_FEATURE
E3_FANTASY_CRYSTALS_ASSETS_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_CRYSTALS_ASSETS_FEATURE
E3_FANTASY_PLANETS_COLORS_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.E3_FANTASY_PLANETS_COLORS_FEATURE
REDMAS_RUINS_FEATURES = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.REDMAS_RUINS_FEATURES
-- End Assets Rework params
HUGE_WATER_COLORS_DIVERSITY_FEATURE = INIT_PRESET.GENERATION_FEATURES.COLORS_AUTO_GENERATION_FEATURES.HUGE_WATER_COLORS_DIVERSITY_FEATURE
PLANETSKY_COLORS_DIVERSITY_FEATURE = INIT_PRESET.GENERATION_FEATURES.COLORS_AUTO_GENERATION_FEATURES.PLANETSKY_COLORS_DIVERSITY_FEATURE
LARGE_BUILDINGS_TRADINGPOSTS_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.ASSETS_REPLACEMENTS_FEATURES.LARGE_BUILDINGS_TRADINGPOSTS_FEATURE
-- Biomes param
CONSTRUCTS_BY_MSSP_SPAWNER = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.CONSTRUCTS_BY_MSSP_SPAWNER
SKY_BIOMES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.SKY_BIOMES_FEATURE
FANTASY_BIOMES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.FANTASY_BIOMES_FEATURE
STORM_BIOMES_FEATURES = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.STORM_BIOMES_FEATURES
GIANTS_BIOMES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.GIANTS_BIOMES_FEATURE
LOWWATER_AND_BEACH_BIOMES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.LOWWATER_AND_BEACH_BIOMES_FEATURE
MONTAINS_BIOMES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.MONTAINS_BIOMES_FEATURE
CAVE_BIOMES_FEATURE = INIT_PRESET.GENERATION_FEATURES.PLANETS_GENERATION_FEATURES.BIOMES_FEATURES.CAVE_BIOMES_FEATURE
-- End Biomes param
-- SPACE PARAMS ----------------------------------------------------------------------------------------------
REDMAS_SPACE_GENERATION = INIT_PRESET.GENERATION_FEATURES.SPACE_GENERATION_FEATURES.REDMAS_SPACE_GENERATION
TRADING_ROUTES = INIT_PRESET.GENERATION_FEATURES.SPACE_GENERATION_FEATURES.TRADING_ROUTES
MASSIVE_FLEET = INIT_PRESET.GENERATION_FEATURES.SPACE_GENERATION_FEATURES.MASSIVE_FLEET
PROCEDURAL_SPACE_CRASHSITE_FOR_SCAVENGING_MISSION = INIT_PRESET.GENERATION_FEATURES.SPACE_GENERATION_FEATURES.PROCEDURAL_SPACE_CRASHSITE_FOR_SCAVENGING_MISSION
-- SKINS PARAMS ---------------------------------------------------------------------------------
DRONE_PET_SKIN_FEATURE = INIT_PRESET.SKINS.DRONE_PET_SKIN_FEATURE
DRONE_PET_SKIN = INIT_PRESET.SKINS.DRONE_PET_SKIN
CHAR_PRESETS_SKINS = INIT_PRESET.SKINS.CHAR_PRESETS_SKINS
-- CHALLENGE MODE PARAMS -------------------------------------------------------------------------------------
 STRONG_CREATURES_FEATURE = INIT_PRESET.CHALLENGE_FEATURES.STRONG_CREATURES_FEATURE
 HEALTH_MULTIPLIER = INIT_PRESET.CHALLENGE_FEATURES.HEALTH_MULTIPLIER
 DARK_UNDERWATER = INIT_PRESET.CHALLENGE_FEATURES.DARK_UNDERWATER
 STRONG_PIRATES_FEATURE = INIT_PRESET.CHALLENGE_FEATURES.STRONG_PIRATES_FEATURE
-- EASY MODE PARAMS ------------------------------------------------------------------------------------------
PULSE_ENGINE_SPEED_MULTIPLIER = INIT_PRESET.EASY_MODE_FEATURES.PULSE_ENGINE_SPEED_MULTIPLIER
 LAUNCH_COST_REDUCTION = INIT_PRESET.EASY_MODE_FEATURES.LAUNCH_COST_REDUCTION
 WARPCELL_USAGE_MULTIPLIER = INIT_PRESET.EASY_MODE_FEATURES.WARPCELL_USAGE_MULTIPLIER
 HYPERDRIVE_RANGE_MULTIPLIER = INIT_PRESET.EASY_MODE_FEATURES.HYPERDRIVE_RANGE_MULTIPLIER
 --------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local interactButton = function(path)
	local BUTTON = [[
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="REDMAS_BUTTON" />
          <Property name="NameHash" value="1402981485" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
             <Property name="Value" value="]]..path..[[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>		   
	]]
	return BUTTON
end
BTN_CARGO = interactButton([[MODELS\RGO\ENTITIES\CARGOGENERATOR.ENTITY.MBIN]])
BTN_CRATES = interactButton([[MODELS\RGO\ENTITIES\FERRITEDUSTGENERATOR.ENTITY.MBIN]])
BTN_HYDRO = interactButton([[MODELS\RGO\ENTITIES\DIHYDROGENGENERATOR.ENTITY.MBIN]])
BTN_SIGNAL = interactButton([[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SIGNALSCANNER\ENTITIES\SIGNALSCANNER.ENTITY.MBIN]])
local addContent = function (CONTENT_TABLE)----------------------------------------------------------------------------
	local localCONTENT = --------------------------------------------------------------------------------------------------------------------------------------------------------
	{--------------------------------------------------------------------------------------------------------------------------------------------------------
		["MBIN_CHANGE_TABLE"] = CONTENT_TABLE----------------------------------------------------------------------------
	}--------------------------------------------------------------------------------------------------------------------------------------------------------
	table.insert(FEATURES_CHANGE_TABLE,localCONTENT)----------------------------------------------------------------------------
end--------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
local addFeature = function (FEATURE,CONTENTPARAM,DAYONE)----------------------------------------------------------------------------
	if FEATURE == "ALWAYS" then----------------------------------------------------------------------------
		FEATURE = "ON"----------------------------------------------------------------------------
	end--------------------------------------------------------------------------------------------------------------------------------------------------------
	if DAYONE == nil then----------------------------------------------------------------------------
		if FEATURE == "ON" then----------------------------------------------------------------------------
			addContent(CONTENTPARAM)----------------------------------------------------------------------------
		end--------------------------------------------------------------------------------------------------------------------------------------------------------
	else --------------------------------------------------------------------------------------------------------------------------------------------------------
		if FEATURE == "ON" and DAYONE ~="ON" then----------------------------------------------------------------------------
			addContent(CONTENTPARAM)----------------------------------------------------------------------------
		end--------------------------------------------------------------------------------------------------------------------------------------------------------
	end--------------------------------------------------------------------------------------------------------------------------------------------------------
end--------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
local readTemplate = function (name)----------------------------------------------------------------------------
	Template = io.open([[..\RGOG\XML\]]..name..[[.xml]],"r")----------------------------------------------------------------------------
	if Template ~=nil then--------------------------------------------------------------------------------------------------------------------------------------------------------
	CONTENT = Template:read("*all")--------------------------------------------------------------------------------------------------------------------------------------------------------
	Template:close()--------------------------------------------------------------------------------------------------------------------------------------------------------
	else print("------ REDMAS TEMPLATE not found : " .. name..".XML -----")----------------------------------------------------------------------------
	end--------------------------------------------------------------------------------------------------------------------------------------------------------
	return CONTENT--------------------------------------------------------------------------------------------------------------------------------------------------------
end--------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
local copyEXML = function (flag,source,destination)----------------------------------------------------------------------------
	if flag == "ON" then	--------------------------------------------------------------------------------------------------------------------------------------------------------
			CONTENT =--------------------------------------------------------------------------------------------------------------------------------------------------------
			{--------------------------------------------------------------------------------------------------------------------------------------------------------
				["EXTERNAL_FILE_SOURCE"] 	= [[..\RGOG\EXML\]]..source,		----------------------------------------------------------------------------
				["FILE_DESTINATION"] 		= destination,			----------------------------------------------------------------------------
			}--------------------------------------------------------------------------------------------------------------------------------------------------------
		table.insert(CUSTOM_CONTENT, CONTENT) ----------------------------------------------------------------------------
	end--------------------------------------------------------------------------------------------------------------------------------------------------------
end	--------------------------------------------------------------------------------------------------------------------------------------------------------
--copyEXML("ON","_01.SCENE.EXML","MODELS\RGO\TEST.EXML")
local tablelength = function (T)------------------------------------------------------------------------------------------------------------
  local count = 0------------------------------------------------------------------------------------------------------------
  for _ in pairs(T) do count = count + 1
 end------------------------------------------------------------------------------------------------------------
  return count------------------------------------------------------------------------------------------------------------
end------------------------------------------------------------------------------------------------------------
function generateRareRessourcesBiome(BIOME_PATH,TYPE,PATH,MAXSIZE)
	-----------------------------------------------------------------------------------------------------------
	BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN]],------------------------------------------------------------------------------------------------------------
					BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},		
					["ADD"] 	=
					[[
						<Property name="Objects"></Property>	
						<Property name="Landmarks">	  
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..PATH..[[" />
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="LEAF" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.4" />
											<Property name="G" value="0.53" />
											<Property name="B" value="0.289" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="2" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FLORACLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="15" />
								<Property name="MatchGroundColour" value="True" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.91" />
								<Property name="MaxScale" value="]]..MAXSIZE..[[" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="True" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.1" />
								<Property name="FlatDensity" value="1E-05" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="1" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="9999" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="200" />
									<Property value="600" />
									<Property value="1000" />
									<Property value="1400" />
								</Property>
								</Property>
								<Property name="QualityVariants" />
							</Property>
						
						</Property>
					]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
function generateRessourcesBiome(BIOME_PATH,TYPE,PATH,ROTATION)
	BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN]],------------------------------------------------------------------------------------------------------------
					BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},------------------------------------------------------------------------------------------------------------		
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[
						<Property name="DetailObjects">	 
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..PATH..[[" />
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="LEAF" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.4" />
											<Property name="G" value="0.53" />
											<Property name="B" value="0.289" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="2" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FLORACLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="35" />
								<Property name="MatchGroundColour" value="True" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.1" />
								<Property name="MaxScale" value="0.5" />
								<Property name="MinScaleY" value="0.91" />
								<Property name="MaxScaleY" value="1.15" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="]]..ROTATION..[[" />
								]]..GIANT_OFTEN_SPAWN..[[						
							</Property>
						</Property>
					]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
function generateGiantBiomeFOREST
	(
		GENERATED_BIOME_PATH,
		MAIN_TREE_TYPE,
		MAIN_TREE_PATH,		
		MAIN_TREE_ROTATION,
		MAIN_TREE_SIZEMAX,
		LARGEROCK_TYPE,
		LARGEROCK_PATH,
		LARGEROCK_ROTATION,
		LARGEROCK_SIZEMAX
	)

	------------------------------------------------------------------------------------------------------------
	GENERATED_GIANT_BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN]],------------------------------------------------------------------------------------------------------------
					GENERATED_BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = GENERATED_BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},		------------------------------------------------------------------------------------------------------------
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[
						<Property name="Objects"></Property>	
						<Property name="Landmarks">		  
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..MAIN_TREE_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..MAIN_TREE_PATH..[[" />
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="OVERLAY" />
											<Property name="Group" value="BARKO" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.673" />
											<Property name="G" value="0.641" />
											<Property name="B" value="0.567" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="GRASS" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="BARK" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Wood" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.93" />
											<Property name="G" value="0.891" />
											<Property name="B" value="0.838" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="3" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.164" />
											<Property name="G" value="0.509" />
											<Property name="B" value="0.63" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="2" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="LEAF" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.923" />
											<Property name="G" value="0.484" />
											<Property name="B" value="0.046" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										</Property>
									</Property>
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="COLOUR" />
											<Property name="Group" value="BARKC" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.164" />
											<Property name="G" value="0.509" />
											<Property name="B" value="0.63" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="BARKB" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.542" />
											<Property name="G" value="0.67" />
											<Property name="B" value="0.333" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FLORACLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="High" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="10" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="]]..MAIN_TREE_SIZEMAX..[[" />
								<Property name="MinScaleY" value="0.71" />
								<Property name="MaxScaleY" value="1.32" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="]]..MAIN_TREE_ROTATION..[[" />
								]]..GIANT_OFTEN_SPAWN..[[
								</Property>
							
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..LARGEROCK_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..LARGEROCK_PATH..[[" />
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="LEAF" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.4" />
											<Property name="G" value="0.53" />
											<Property name="B" value="0.289" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="2" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FLORACLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="15" />
								<Property name="MatchGroundColour" value="True" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="]]..LARGEROCK_SIZEMAX..[[" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.3" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="]]..LARGEROCK_ROTATION..[[" />
								]]..GIANT_SPARSE_SPAWN..[[						
							</Property>
						</Property>
					]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(GENERATED_GIANT_BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
--generateORIGINSTREES------------------------------------------------------------------------------------------------------------
function generateORIGINSTREES
	(
		GENERATED_BIOME_PATH,
		MAIN_TREE_TYPE,
		MAIN_TREE_PATH,		
		MAIN_TREE_SIZEMAX
		
	)

	------------------------------------------------------------------------------------------------------------
	GENERATED_BIOME = ------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN]],------------------------------------------------------------------------------------------------------------
					GENERATED_BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = GENERATED_BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},	------------------------------------------------------------------------------------------------------------	
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[
						<Property name="Landmarks"></Property>	
							<Property name="Objects">	  

								
								<Property value="GcObjectSpawnData.xml">
									<Property name="DebugName" value="" />
									<Property name="Type" value="]]..MAIN_TREE_TYPE..[[" />
									<Property name="Resource" value="GcResourceElement.xml">
									<Property name="Filename" value="]]..MAIN_TREE_PATH..[[" />
									<Property name="Seed" value="GcSeed.xml">
										<Property name="Seed" value="0" />
										<Property name="UseSeedValue" value="False" />
									</Property>
									<Property name="AltId" value="" />
									<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
										<Property name="Samplers">
										<Property value="TkProceduralTextureChosenOptionSampler.xml">
											<Property name="Options">
											<Property value="TkProceduralTextureChosenOption.xml">
												<Property name="Layer" value="OVERLAY" />
												<Property name="Group" value="BARKO" />
												<Property name="Palette" value="TkPaletteTexture.xml">
												<Property name="Palette" value="Rock" />
												<Property name="ColourAlt" value="Primary" />
												</Property>
												<Property name="OverrideColour" value="True" />
												<Property name="Colour" value="Colour.xml">
												<Property name="R" value="0.673" />
												<Property name="G" value="0.641" />
												<Property name="B" value="0.567" />
												<Property name="A" value="1" />
												</Property>
												<Property name="OptionName" value="GRASS" />
											</Property>
											<Property value="TkProceduralTextureChosenOption.xml">
												<Property name="Layer" value="BASE" />
												<Property name="Group" value="BARK" />
												<Property name="Palette" value="TkPaletteTexture.xml">
												<Property name="Palette" value="Wood" />
												<Property name="ColourAlt" value="Primary" />
												</Property>
												<Property name="OverrideColour" value="True" />
												<Property name="Colour" value="Colour.xml">
												<Property name="R" value="0.93" />
												<Property name="G" value="0.891" />
												<Property name="B" value="0.838" />
												<Property name="A" value="1" />
												</Property>
												<Property name="OptionName" value="3" />
											</Property>
											<Property value="TkProceduralTextureChosenOption.xml">
												<Property name="Layer" value="BASE" />
												<Property name="Group" value="" />
												<Property name="Palette" value="TkPaletteTexture.xml">
												<Property name="Palette" value="Plant" />
												<Property name="ColourAlt" value="Primary" />
												</Property>
												<Property name="OverrideColour" value="False" />
												<Property name="Colour" value="Colour.xml">
												<Property name="R" value="0.164" />
												<Property name="G" value="0.509" />
												<Property name="B" value="0.63" />
												<Property name="A" value="1" />
												</Property>
												<Property name="OptionName" value="2" />
											</Property>
											<Property value="TkProceduralTextureChosenOption.xml">
												<Property name="Layer" value="BASE" />
												<Property name="Group" value="LEAF" />
												<Property name="Palette" value="TkPaletteTexture.xml">
												<Property name="Palette" value="Leaf" />
												<Property name="ColourAlt" value="Primary" />
												</Property>
												<Property name="OverrideColour" value="True" />
												<Property name="Colour" value="Colour.xml">
												<Property name="R" value="0.923" />
												<Property name="G" value="0.484" />
												<Property name="B" value="0.046" />
												<Property name="A" value="1" />
												</Property>
												<Property name="OptionName" value="1" />
											</Property>
											</Property>
										</Property>
										<Property value="TkProceduralTextureChosenOptionSampler.xml">
											<Property name="Options">
											<Property value="TkProceduralTextureChosenOption.xml">
												<Property name="Layer" value="COLOUR" />
												<Property name="Group" value="BARKC" />
												<Property name="Palette" value="TkPaletteTexture.xml">
												<Property name="Palette" value="Plant" />
												<Property name="ColourAlt" value="Primary" />
												</Property>
												<Property name="OverrideColour" value="False" />
												<Property name="Colour" value="Colour.xml">
												<Property name="R" value="0.164" />
												<Property name="G" value="0.509" />
												<Property name="B" value="0.63" />
												<Property name="A" value="1" />
												</Property>
												<Property name="OptionName" value="" />
											</Property>
											<Property value="TkProceduralTextureChosenOption.xml">
												<Property name="Layer" value="BASE" />
												<Property name="Group" value="BARKB" />
												<Property name="Palette" value="TkPaletteTexture.xml">
												<Property name="Palette" value="Grass" />
												<Property name="ColourAlt" value="Primary" />
												</Property>
												<Property name="OverrideColour" value="False" />
												<Property name="Colour" value="Colour.xml">
												<Property name="R" value="0.542" />
												<Property name="G" value="0.67" />
												<Property name="B" value="0.333" />
												<Property name="A" value="1" />
												</Property>
												<Property name="OptionName" value="1" />
											</Property>
											</Property>
										</Property>
										</Property>
									</Property>
									</Property>
									<Property name="AltResources" />
									<Property name="ExtraTileTypes" />
									<Property name="Placement" value="FLORACLUMP" />
									<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
									</Property>
									<Property name="PlacementPriority" value="High" />
									<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
									<Property name="OverlapStyle" value="SameSeed" />
									<Property name="MinHeight" value="-1" />
									<Property name="MaxHeight" value="1280" />
									<Property name="RelativeToSeaLevel" value="True" />
									<Property name="MinAngle" value="0" />
									<Property name="MaxAngle" value="60" />
									<Property name="MatchGroundColour" value="False" />
									<Property name="GroundColourIndex" value="Auto" />
									<Property name="SwapPrimaryForSecondaryColour" value="False" />
									<Property name="SwapPrimaryForRandomColour" value="False" />
									<Property name="AlignToNormal" value="False" />
									<Property name="MinScale" value="1.3" />
									<Property name="MaxScale" value="]]..MAIN_TREE_SIZEMAX..[[" />
									<Property name="MinScaleY" value="0.91" />
									<Property name="MaxScaleY" value="1.12" />
									<Property name="SlopeScaling" value="1" />
									<Property name="PatchEdgeScaling" value="0" />
									<Property name="MaxXZRotation" value="5" />
									<Property name="AutoCollision" value="False" />
									<Property name="CollideWithPlayer" value="True" />
									<Property name="CollideWithPlayerVehicle" value="True" />
									<Property name="DestroyedByPlayerVehicle" value="True" />
									<Property name="DestroyedByPlayerShip" value="True" />
									<Property name="DestroyedByTerrainEdit" value="True" />
									<Property name="InvisibleToCamera" value="True" />
									<Property name="CreaturesCanEat" value="False" />
									<Property name="ShearWindStrength" value="0" />
									<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
									<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.6" />
									<Property name="FlatDensity" value="0.004" />
									<Property name="SlopeDensity" value="0" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="9999" />
									<Property name="MaxImposterRadius" value="9999" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="9999" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="200" />
									<Property value="600" />
									<Property value="1000" />
									<Property value="1400" />
									</Property>
									</Property>
									<Property name="QualityVariants">
									
									</Property>
								</Property>

							</Property>
					]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(GENERATED_BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
--generate BROKEN TREES
--[=[
function generateBrokenTreeS
	(
		GENERATED_BIOME_PATH,
		MAIN_TREE_TYPE,
		MAIN_TREE_PATH,		
		MAIN_TREE_ROTATION,
		MAIN_TREE_SIZEMAX
		
	)

	GENERATED_BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN]],------------------------------------------------------------------------------------------------------------
					GENERATED_BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = GENERATED_BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},	------------------------------------------------------------------------------------------------------------	
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[
							<Property name="Landmarks">
								<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..MAIN_TREE_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..MAIN_TREE_PATH..[[" />
																					
																			
											
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="OVERLAY" />
											<Property name="Group" value="BARK" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.474" />
											<Property name="G" value="0.56" />
											<Property name="B" value="0.231" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="LICHEN" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="BARK" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Wood" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.217" />
											<Property name="G" value="0.28" />
											<Property name="B" value="0.167" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="2" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="GRADIENT" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.474" />
											<Property name="G" value="0.56" />
											<Property name="B" value="0.231" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.149" />
											<Property name="G" value="0.563" />
											<Property name="B" value="0.315" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="5" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.149" />
											<Property name="G" value="0.563" />
											<Property name="B" value="0.315" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FLORACLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="30" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1.7" />
								<Property name="MaxScale" value="]]..MAIN_TREE_SIZEMAX..[[" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="320" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.15" />
								<Property name="FlatDensity" value="0.0019" />
								<Property name="SlopeDensity" value="0.001" />
								<Property name="SlopeMultiplier" value="1" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
																				
																		
																		
																			
																				
																				
																					
																					
																						
																					
																					
																
															
															
															
															
															
											
											
								</Property>
							</Property>
							
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/TESTS/FREQTEST/RARE2.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="RARE2X" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="High" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="180" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="1" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="1" />
									<Property name="FlatDensity" value="0.5" />
									<Property name="SlopeDensity" value="0.5" />
									<Property name="SlopeMultiplier" value="0" />
									<Property name="MaxRegionRadius" value="9999" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							</Property>
							<Property name="Objects">
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Single" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/GEMCRYSTALS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="RARE2" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="60" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.6" />
								<Property name="MaxScale" value="1.1" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="10" />
									<Property name="FlatDensity" value="0.035" />
									<Property name="SlopeDensity" value="0.035" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="3" />
									<Property name="MaxImposterRadius" value="0" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							</Property>
 
							]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(GENERATED_BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
-- end generate BROKEN trees
--]=]

--generate ROCK SUBBIOMES
function generateRocksBiomes
	(
		GENERATED_BIOME_PATH,
		ROCK_TYPE,
		ROCK_PATH		
	)

	GENERATED_BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN]],------------------------------------------------------------------------------------------------------------
					GENERATED_BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = GENERATED_BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
					-----------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},	------------------------------------------------------------------------------------------------------------	
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[
						<Property name="DetailObjects">
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..ROCK_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..ROCK_PATH..[[" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="MOSS" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="MatchGround" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.509" />
											<Property name="G" value="0.685" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.509" />
											<Property name="G" value="0.685" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="SMALLCLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="150" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.13" />
								<Property name="MaxScale" value="0.41" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.1" />
								<Property name="FlatDensity" value="0.001" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="1" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.35" />
											<Property name="G" value="0.318" />
											<Property name="B" value="0.243" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="SMALLCLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.3" />
								<Property name="MaxScale" value="0.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.2" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.1" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="True" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.25" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.25" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.35" />
											<Property name="G" value="0.318" />
											<Property name="B" value="0.243" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="SMALLCLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1.2" />
								<Property name="MaxScale" value="1.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.1" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="True" />
								<Property name="ShearWindStrength" value="0.2" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="50" />
									<Property name="FadeOutEndDistance" value="60" />
									<Property name="FadeOutOffsetDistance" value="5" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
    
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="SMALLCLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="0" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="1.7" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.5" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.15" />
									<Property name="FlatDensity" value="0.08" />
									<Property name="SlopeDensity" value="0.08" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.15" />
									<Property name="FlatDensity" value="0.08" />
									<Property name="SlopeDensity" value="0.08" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="SMALLCLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="2.5" />
								<Property name="MaxScale" value="3.5" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.4" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.5" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="60" />
									<Property name="FadeOutEndDistance" value="70" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="SNOW" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Snow" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.509" />
											<Property name="G" value="0.685" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="MOSS" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.278" />
											<Property name="G" value="0.581" />
											<Property name="B" value="0.653" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.334" />
											<Property name="G" value="0.33" />
											<Property name="B" value="0.327" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="3" />
								<Property name="MaxScale" value="4" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.4" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.5" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="60" />
									<Property name="FadeOutEndDistance" value="70" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.8" />
								<Property name="MaxScale" value="1.2" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..ROCK_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..ROCK_PATH..[[" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.923" />
											<Property name="G" value="0.484" />
											<Property name="B" value="0.046" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1.3" />
								<Property name="MaxScale" value="1.7" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.1" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.008" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.008" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.3" />
								<Property name="MaxScale" value="0.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.035" />
									<Property name="SlopeDensity" value="0.035" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.035" />
									<Property name="SlopeDensity" value="0.035" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="2" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.02" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.02" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.287" />
											<Property name="G" value="0.287" />
											<Property name="B" value="0.287" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="150" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1.2" />
								<Property name="MaxScale" value="1.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.05" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.2" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="50" />
									<Property name="FadeOutEndDistance" value="60" />
									<Property name="FadeOutOffsetDistance" value="5" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="OVERLAY" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.245" />
											<Property name="G" value="0.591" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="TOPDOWNMOSS" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCH" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="150" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.2" />
								<Property name="MaxScale" value="0.8" />
								<Property name="MinScaleY" value="0.8" />
								<Property name="MaxScaleY" value="1.3" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.5" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.005" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.005" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="SMALLCLUMP" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlace" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.8" />
								<Property name="MaxScale" value="1.5" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.2" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="BARRENGRASSCLUM" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="3" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.2" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="JAMESPATCHX" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-1" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="140" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.8" />
								<Property name="MaxScale" value="1.2" />
								<Property name="MinScaleY" value="0.8" />
								<Property name="MaxScaleY" value="1.2" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.7" />
								<Property name="MaxXZRotation" value="15" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.015" />
									<Property name="SlopeDensity" value="0.01" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="250" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.015" />
									<Property name="SlopeDensity" value="0.01" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							</Property>
  
 
							]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(GENERATED_BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
-- end generate ROCK SUBBIOMES
--generate MOUNTAIN SUBBIOMES
function generateMountainBiomes
	(
		GENERATED_BIOME_PATH,
		ROCK_TYPE,
		ROCK_PATH		
	)

	GENERATED_BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN]],------------------------------------------------------------------------------------------------------------
					GENERATED_BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = GENERATED_BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
					-----------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},	------------------------------------------------------------------------------------------------------------	
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[
						<Property name="DetailObjects">
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..ROCK_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..ROCK_PATH..[[" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="MOSS" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="MatchGround" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.509" />
											<Property name="G" value="0.685" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.509" />
											<Property name="G" value="0.685" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="100" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="51" />
								<Property name="MaxAngle" value="223" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.13" />
								<Property name="MaxScale" value="0.31" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.1" />
								<Property name="FlatDensity" value="0.001" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.35" />
											<Property name="G" value="0.318" />
											<Property name="B" value="0.243" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="100" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="15" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.3" />
								<Property name="MaxScale" value="0.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.2" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.1" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="True" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.25" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.25" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.35" />
											<Property name="G" value="0.318" />
											<Property name="B" value="0.243" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="GRASS" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="100" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="51" />
								<Property name="MaxAngle" value="323" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1.2" />
								<Property name="MaxScale" value="1.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.1" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="True" />
								<Property name="ShearWindStrength" value="0.2" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="50" />
									<Property name="FadeOutEndDistance" value="60" />
									<Property name="FadeOutOffsetDistance" value="5" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="55" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="1.7" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.5" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.15" />
									<Property name="FlatDensity" value="0.08" />
									<Property name="SlopeDensity" value="0.08" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.15" />
									<Property name="FlatDensity" value="0.08" />
									<Property name="SlopeDensity" value="0.08" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="15" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.15" />
								<Property name="MaxScale" value="0.5" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.4" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.5" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="60" />
									<Property name="FadeOutEndDistance" value="70" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="SNOW" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Snow" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.509" />
											<Property name="G" value="0.685" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="MOSS" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Plant" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.278" />
											<Property name="G" value="0.581" />
											<Property name="B" value="0.653" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.334" />
											<Property name="G" value="0.33" />
											<Property name="B" value="0.327" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="40" />
								<Property name="MaxAngle" value="50" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="3" />
								<Property name="MaxScale" value="4" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.4" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.5" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="60" />
									<Property name="FadeOutEndDistance" value="70" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="7" />
									<Property value="15" />
									<Property value="25" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="15" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.8" />
								<Property name="MaxScale" value="1.2" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="]]..ROCK_TYPE..[[" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="]]..ROCK_PATH..[[" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.923" />
											<Property name="G" value="0.484" />
											<Property name="B" value="0.046" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Normal" />
								<Property name="LargeObjectCoverage" value="DoNotPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="51" />
								<Property name="MaxAngle" value="223" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.3" />
								<Property name="MaxScale" value="0.7" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.1" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.008" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.008" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.3" />
								<Property name="MaxScale" value="0.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.035" />
									<Property name="SlopeDensity" value="0.035" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.035" />
									<Property name="SlopeDensity" value="0.035" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="1" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Leaf" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.643" />
											<Property name="G" value="0.195" />
											<Property name="B" value="0.136" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="-10" />
								<Property name="MaxHeight" value="1280" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="10" />
								<Property name="MaxAngle" value="145" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="2" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="8" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.02" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.3" />
									<Property name="FlatDensity" value="0.02" />
									<Property name="SlopeDensity" value="0.02" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="25" />
									<Property value="35" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="True" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.287" />
											<Property name="G" value="0.287" />
											<Property name="B" value="0.287" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="All" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="50" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1.2" />
								<Property name="MaxScale" value="1.8" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.05" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.2" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="50" />
									<Property name="FadeOutEndDistance" value="60" />
									<Property name="FadeOutOffsetDistance" value="5" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.24" />
									<Property name="FlatDensity" value="0.06" />
									<Property name="SlopeDensity" value="0.06" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers">
									<Property value="TkProceduralTextureChosenOptionSampler.xml">
										<Property name="Options">
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="OVERLAY" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Grass" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.245" />
											<Property name="G" value="0.591" />
											<Property name="B" value="0.7" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="TOPDOWNMOSS" />
										</Property>
										<Property value="TkProceduralTextureChosenOption.xml">
											<Property name="Layer" value="BASE" />
											<Property name="Group" value="" />
											<Property name="Palette" value="TkPaletteTexture.xml">
											<Property name="Palette" value="Rock" />
											<Property name="ColourAlt" value="Primary" />
											</Property>
											<Property name="OverrideColour" value="False" />
											<Property name="Colour" value="Colour.xml">
											<Property name="R" value="0.377" />
											<Property name="G" value="0.321" />
											<Property name="B" value="0.261" />
											<Property name="A" value="1" />
											</Property>
											<Property name="OptionName" value="" />
										</Property>
										</Property>
									</Property>
									</Property>
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="None" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="50" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.2" />
								<Property name="MaxScale" value="0.8" />
								<Property name="MinScaleY" value="0.8" />
								<Property name="MaxScaleY" value="1.3" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.5" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="False" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.005" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="70" />
									<Property name="FadeOutEndDistance" value="80" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.2" />
									<Property name="FlatDensity" value="0.005" />
									<Property name="SlopeDensity" value="0.005" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="15" />
									<Property value="30" />
									<Property value="45" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlace" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="50" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="False" />
								<Property name="MinScale" value="0.8" />
								<Property name="MaxScale" value="1.5" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1.2" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.3" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.03" />
									<Property name="SlopeDensity" value="0.03" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="AlwaysPlace" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="50" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="1" />
								<Property name="MaxScale" value="3" />
								<Property name="MinScaleY" value="1" />
								<Property name="MaxScaleY" value="1" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0" />
								<Property name="MaxXZRotation" value="0" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0.2" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.35" />
									<Property name="FlatDensity" value="0.04" />
									<Property name="SlopeDensity" value="0.04" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							<Property value="GcObjectSpawnData.xml">
								<Property name="DebugName" value="" />
								<Property name="Type" value="Instanced" />
								<Property name="Resource" value="GcResourceElement.xml">
								<Property name="Filename" value="MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
								<Property name="Seed" value="GcSeed.xml">
									<Property name="Seed" value="0" />
									<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="AltId" value="" />
								<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
									<Property name="Samplers" />
								</Property>
								</Property>
								<Property name="AltResources" />
								<Property name="ExtraTileTypes" />
								<Property name="Placement" value="FOREST" />
								<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
								</Property>
								<Property name="PlacementPriority" value="Low" />
								<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
								<Property name="OverlapStyle" value="SameSeed" />
								<Property name="MinHeight" value="10" />
								<Property name="MaxHeight" value="1028" />
								<Property name="RelativeToSeaLevel" value="True" />
								<Property name="MinAngle" value="50" />
								<Property name="MaxAngle" value="350" />
								<Property name="MatchGroundColour" value="False" />
								<Property name="GroundColourIndex" value="Auto" />
								<Property name="SwapPrimaryForSecondaryColour" value="False" />
								<Property name="SwapPrimaryForRandomColour" value="False" />
								<Property name="AlignToNormal" value="True" />
								<Property name="MinScale" value="0.8" />
								<Property name="MaxScale" value="1.2" />
								<Property name="MinScaleY" value="0.8" />
								<Property name="MaxScaleY" value="1.2" />
								<Property name="SlopeScaling" value="1" />
								<Property name="PatchEdgeScaling" value="0.7" />
								<Property name="MaxXZRotation" value="15" />
								<Property name="AutoCollision" value="False" />
								<Property name="CollideWithPlayer" value="True" />
								<Property name="CollideWithPlayerVehicle" value="False" />
								<Property name="DestroyedByPlayerVehicle" value="True" />
								<Property name="DestroyedByPlayerShip" value="True" />
								<Property name="DestroyedByTerrainEdit" value="True" />
								<Property name="InvisibleToCamera" value="True" />
								<Property name="CreaturesCanEat" value="False" />
								<Property name="ShearWindStrength" value="0" />
								<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
								<Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
								<Property name="ID" value="STANDARD" />
								<Property name="Coverage" value="0.2" />
								<Property name="FlatDensity" value="0.5" />
								<Property name="SlopeDensity" value="0" />
								<Property name="SlopeMultiplier" value="3" />
								<Property name="MaxRegionRadius" value="9999" />
								<Property name="MaxImposterRadius" value="10" />
								<Property name="FadeOutStartDistance" value="9999" />
								<Property name="FadeOutEndDistance" value="9999" />
								<Property name="FadeOutOffsetDistance" value="0" />
								<Property name="LodDistances">
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
									<Property value="0" />
								</Property>
								</Property>
								<Property name="QualityVariants">
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="STANDARD" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.015" />
									<Property name="SlopeDensity" value="0.01" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="2" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="9999" />
									<Property name="FadeOutEndDistance" value="9999" />
									<Property name="FadeOutOffsetDistance" value="0" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="250" />
									</Property>
								</Property>
								<Property value="GcObjectSpawnDataVariant.xml">
									<Property name="ID" value="ULTRA" />
									<Property name="Coverage" value="0.4" />
									<Property name="FlatDensity" value="0.015" />
									<Property name="SlopeDensity" value="0.01" />
									<Property name="SlopeMultiplier" value="1" />
									<Property name="MaxRegionRadius" value="7" />
									<Property name="MaxImposterRadius" value="10" />
									<Property name="FadeOutStartDistance" value="200" />
									<Property name="FadeOutEndDistance" value="210" />
									<Property name="FadeOutOffsetDistance" value="10" />
									<Property name="LodDistances">
									<Property value="0" />
									<Property value="20" />
									<Property value="60" />
									<Property value="150" />
									<Property value="500" />
									</Property>
								</Property>
								</Property>
							</Property>
							</Property>
  
 
							]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(GENERATED_BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
-- end generate MOUNTAIN SUBBIOMES
--generate CAVE SUBBIOMES
function generateCaveBiomes
	(
		GENERATED_BIOME_PATH,
		PROPS_TYPE,
		PROPS_PATH
	)

	GENERATED_BIOME =------------------------------------------------------------------------------------------------------------
	{	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] =------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN]],------------------------------------------------------------------------------------------------------------
					GENERATED_BIOME_PATH..".MBIN"------------------------------------------------------------------------------------------------------------
				}------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		},	------------------------------------------------------------------------------------------------------------
		{------------------------------------------------------------------------------------------------------------
			["MBIN_FILE_SOURCE"] = GENERATED_BIOME_PATH..".MBIN",------------------------------------------------------------------------------------------------------------
			["EXML_CHANGE_TABLE"] = ------------------------------------------------------------------------------------------------------------
			{------------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},------------------------------------------------------------------------------------------------------------
					["SECTION_ACTIVE"] = {1,2},------------------------------------------------------------------------------------------------------------
					["REMOVE"] 	= "SECTION"------------------------------------------------------------------------------------------------------------
				},------------------------------------------------------------------------------------------------------------
					-----------------------------------------------------------------------------------------------------------
				{------------------------------------------------------------------------------------------------------------
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},	------------------------------------------------------------------------------------------------------------	
					["ADD"] 	=------------------------------------------------------------------------------------------------------------
					[[						  
					    <Property name="DetailObjects">
			<Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="]]..PROPS_TYPE..[[" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]]..PROPS_PATH..[[" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FOREST" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-128" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="60" />
        <Property name="MaxAngle" value="120" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.3" />
        <Property name="MaxScale" value="0.8" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
        <Property name="Coverage" value="0.2" />
        <Property name="FlatDensity" value="0.08" />
        <Property name="SlopeDensity" value="0.08" />
        <Property name="SlopeMultiplier" value="1" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants" />

      </Property>    
	   <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="]]..PROPS_TYPE..[[" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]]..PROPS_PATH..[[" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-128" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="61" />
        <Property name="MaxAngle" value="222" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.03" />
        <Property name="MaxScale" value="0.18" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
        <Property name="Coverage" value="0.2" />
        <Property name="FlatDensity" value="0.08" />
        <Property name="SlopeDensity" value="0.08" />
        <Property name="SlopeMultiplier" value="1" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants" />

      </Property>

	
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\FIENDEGG.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="RARECAVE" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-128" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="60" />
        <Property name="MaxAngle" value="155" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.21" />
          <Property name="FlatDensity" value="0.02" />
          <Property name="SlopeDensity" value="0.02" />
          <Property name="SlopeMultiplier" value="0.1" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.02" />
            <Property name="SlopeDensity" value="0.02" />
            <Property name="SlopeMultiplier" value="0.1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\TREASURE_CHEST.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="RARECAVE" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-128" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="5" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.21" />
          <Property name="FlatDensity" value="0.0002" />
          <Property name="SlopeDensity" value="0.0002" />
          <Property name="SlopeMultiplier" value="1" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.0002" />
            <Property name="SlopeDensity" value="0.0002" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
	   <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS\PLANETS\BIOMES\COMMON\FLOWERS\YARROW.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="1" />
            <Property name="UseSeedValue" value="True" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="6" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="55" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="1.6" />
        <Property name="MaxScale" value="1.9" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.3" />
          <Property name="FlatDensity" value="0.2" />
          <Property name="SlopeDensity" value="0.7" />
          <Property name="SlopeMultiplier" value="2.8" />
          <Property name="MaxRegionRadius" value="7" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="100" />
          <Property name="FadeOutEndDistance" value="110" />
          <Property name="FadeOutOffsetDistance" value="5" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="8" />
            <Property value="15" />
            <Property value="25" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants" />
      </Property>     
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CAVE/EGGRESOURCE.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="RARECAVE" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-128" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="60" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="4" />
            <Property name="FlatDensity" value="0.03" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
					     



  

 
					]]
				},------------------------------------------------------------------------------------------------------------
			}------------------------------------------------------------------------------------------------------------
		}------------------------------------------------------------------------------------------------------------
	}------------------------------------------------------------------------------------------------------------
	addContent(GENERATED_BIOME)------------------------------------------------------------------------------------------------------------
end	------------------------------------------------------------------------------------------------------------
-- end generate CAVE SUBBIOMES
local generateGiantBiomeMEGALITH = function
	(
		GENERATED_GIANT_BIOME_PATH,
		LARGEROCK_TYPE,
		LARGEROCK_PATH,
		LARGEROCK_ROTATION,
		LARGEROCK_SIZEMAX
	)


	GENERATED_GIANT_BIOME =
	{
		{
			["MBIN_FILE_SOURCE"] =
			{
				{
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN]],
					GENERATED_GIANT_BIOME_PATH..".MBIN"
				}
			}
		},
		{
			["MBIN_FILE_SOURCE"] = GENERATED_GIANT_BIOME_PATH..".MBIN",
			["EXML_CHANGE_TABLE"] =
			{
				{
					["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
					["SECTION_ACTIVE"] = {1,2},
					["REMOVE"] 	= "SECTION"
				},
				{
					["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
					["SECTION_ACTIVE"] = {1,2},
					["REMOVE"] 	= "SECTION"
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},
					["ADD"] 	=
					[[
						<Property name="Objects"></Property>
						<Property name="Objects">

						<Property value="GcObjectSpawnData.xml">
							<Property name="DebugName" value="" />
							<Property name="Type" value="]]..LARGEROCK_TYPE..[[" />
							<Property name="Resource" value="GcResourceElement.xml">
							<Property name="Filename" value="]]..LARGEROCK_PATH..[[" />
							<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
							</Property>
							<Property name="AltId" value="" />
							<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
								<Property name="Samplers">
								<Property value="TkProceduralTextureChosenOptionSampler.xml">
									<Property name="Options">
									<Property value="TkProceduralTextureChosenOption.xml">
										<Property name="Layer" value="BASE" />
										<Property name="Group" value="LEAF" />
										<Property name="Palette" value="TkPaletteTexture.xml">
										<Property name="Palette" value="Leaf" />
										<Property name="ColourAlt" value="Primary" />
										</Property>
										<Property name="OverrideColour" value="True" />
										<Property name="Colour" value="Colour.xml">
										<Property name="R" value="0.4" />
										<Property name="G" value="0.53" />
										<Property name="B" value="0.289" />
										<Property name="A" value="1" />
										</Property>
										<Property name="OptionName" value="2" />
									</Property>
									</Property>
								</Property>
								</Property>
							</Property>
							</Property>
							<Property name="AltResources" />
							<Property name="ExtraTileTypes" />
							<Property name="Placement" value="FLORACLUMP" />
							<Property name="Seed" value="GcSeed.xml">
							<Property name="Seed" value="0" />
							<Property name="UseSeedValue" value="False" />
							</Property>
							<Property name="PlacementPriority" value="Normal" />
							<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
							<Property name="OverlapStyle" value="None" />
							<Property name="MinHeight" value="-1" />
							<Property name="MaxHeight" value="1128" />
							<Property name="RelativeToSeaLevel" value="True" />
							<Property name="MinAngle" value="0" />
							<Property name="MaxAngle" value="15" />
							<Property name="MatchGroundColour" value="True" />
							<Property name="GroundColourIndex" value="Auto" />
							<Property name="SwapPrimaryForSecondaryColour" value="False" />
							<Property name="SwapPrimaryForRandomColour" value="False" />
							<Property name="AlignToNormal" value="True" />
							<Property name="MinScale" value="]]..LARGEROCK_SIZEMAX..[[" />
							<Property name="MaxScale" value="]]..LARGEROCK_SIZEMAX..[[" />
							<Property name="MinScaleY" value="1" />
							<Property name="MaxScaleY" value="1.3" />
							<Property name="SlopeScaling" value="1" />
							<Property name="PatchEdgeScaling" value="0" />
							<Property name="MaxXZRotation" value="]]..LARGEROCK_ROTATION..[[" />
							]]..GIANT_SPARSE_SPAWN..[[
						</Property>
					</Property>


					]]
				},
			}
		}

	}
	addContent(GENERATED_GIANT_BIOME)
end
--[=[
local generateGiantBiomeCITY = function
	(
		GENERATED_GIANT_BIOME_PATH,
		BIG_OBJECT_TYPE,
		BIG_OBJECT_PATH,
		BIG_OBJECT_ROTATION,
		BIG_OBJECT_SIZEMAX
	)


	GENERATED_GIANT_BIOME =
	{
		{
			["MBIN_FILE_SOURCE"] =
			{
				{
					[[METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN]],
					GENERATED_GIANT_BIOME_PATH..".MBIN"
				}
			}
		},
		{
			["MBIN_FILE_SOURCE"] = GENERATED_GIANT_BIOME_PATH..".MBIN",
			["EXML_CHANGE_TABLE"] =
			{
				{
					["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
					["SECTION_ACTIVE"] = {1,2},
					["REMOVE"] 	= "SECTION"
				},
				{
					["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
					["SECTION_ACTIVE"] = {1,2},
					["REMOVE"] 	= "SECTION"
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Objects","GcEnvironmentSpawnData.xml"},
					["ADD"] 	=
					[[
						<Property name="Objects"></Property>
						<Property name="Objects">

						<Property value="GcObjectSpawnData.xml">
							<Property name="DebugName" value="" />
							<Property name="Type" value="]]..BIG_OBJECT_TYPE..[[" />
							<Property name="Resource" value="GcResourceElement.xml">
							<Property name="Filename" value="]]..BIG_OBJECT_PATH..[[" />

							<Property name="Seed" value="GcSeed.xml">
								<Property name="Seed" value="0" />
								<Property name="UseSeedValue" value="False" />
							</Property>
							<Property name="AltId" value="" />
							<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
								<Property name="Samplers">
								<Property value="TkProceduralTextureChosenOptionSampler.xml">
									<Property name="Options">
									<Property value="TkProceduralTextureChosenOption.xml">
										<Property name="Layer" value="BASE" />
										<Property name="Group" value="LEAF" />
										<Property name="Palette" value="TkPaletteTexture.xml">
										<Property name="Palette" value="Leaf" />
										<Property name="ColourAlt" value="Primary" />
										</Property>
										<Property name="OverrideColour" value="True" />
										<Property name="Colour" value="Colour.xml">
										<Property name="R" value="0.4" />
										<Property name="G" value="0.53" />
										<Property name="B" value="0.289" />
										<Property name="A" value="1" />
										</Property>
										<Property name="OptionName" value="2" />
									</Property>
									</Property>
								</Property>
								</Property>
							</Property>
							</Property>
							<Property name="AltResources" />
							<Property name="ExtraTileTypes" />
							<Property name="Placement" value="FLORACLUMP" />
							<Property name="Seed" value="GcSeed.xml">
							<Property name="Seed" value="0" />
							<Property name="UseSeedValue" value="False" />
							</Property>
							<Property name="PlacementPriority" value="Normal" />
							<Property name="LargeObjectCoverage" value="DoNotPlaceIgnoreFootprint" />
							<Property name="OverlapStyle" value="None" />
							<Property name="MinHeight" value="-1" />
							<Property name="MaxHeight" value="1128" />
							<Property name="RelativeToSeaLevel" value="True" />
							<Property name="MinAngle" value="0" />
							<Property name="MaxAngle" value="15" />
							<Property name="MatchGroundColour" value="True" />
							<Property name="GroundColourIndex" value="Auto" />
							<Property name="SwapPrimaryForSecondaryColour" value="False" />
							<Property name="SwapPrimaryForRandomColour" value="False" />
							<Property name="AlignToNormal" value="True" />
							<Property name="MinScale" value="1" />
							<Property name="MaxScale" value="]]..BIG_OBJECT_SIZEMAX..[[" />
							<Property name="MinScaleY" value="1" />
							<Property name="MaxScaleY" value="1" />
							<Property name="SlopeScaling" value="1" />
							<Property name="PatchEdgeScaling" value="0" />
							<Property name="MaxXZRotation" value="]]..BIG_OBJECT_ROTATION..[[" />
							]]..GIANT_SPARSE_SPAWN..[[
						</Property>

					</Property>


					]]
				},
			}
		}

	}
	addContent(GENERATED_GIANT_BIOME)
end
--]=]
----------------------------------------------------------------------------------------------------------------------------------------------------------
	RARE_ASTEROID_SPACING_MULTIPLIER = ""----------------------------------------------------------------------------
	LARGE_ASTEROID_SPACING_MULTIPLIER = ""---------------------------------------------------------------------------
	ASTEROID_SPACING_MULTIPLIER = ""-----------------------------------------------------------------------------
	RARE_ASTEROID_SCALE_MULTIPLIER =  ""----------------------------------------------------------------------------
	LARGE_ASTEROID_SCALE_MULTIPLIER =  ""---------------------------------------------------------------------------
	ASTEROID_SCALE_MULTIPLIER =  ""----
local createAsteroidsFields = function  (ASTEROIDS_FILEDS_DATA)--------------------------------------------------------------------------------------------------------------------------------------------------------
	RARE_ASTEROID_SPACING_MULTIPLIER = ASTEROIDS_FILEDS_DATA.RARE_ASTEROID_SPACING_MULTIPLIER----------------------------------------------------------------------------
	LARGE_ASTEROID_SPACING_MULTIPLIER = ASTEROIDS_FILEDS_DATA.LARGE_ASTEROID_SPACING_MULTIPLIER----------------------------------------------------------------------------
	ASTEROID_SPACING_MULTIPLIER = ASTEROIDS_FILEDS_DATA.ASTEROID_SPACING_MULTIPLIER----------------------------------------------------------------------------
	RARE_ASTEROID_SCALE_MULTIPLIER = ASTEROIDS_FILEDS_DATA.RARE_ASTEROID_SCALE_MULTIPLIER----------------------------------------------------------------------------
	LARGE_ASTEROID_SCALE_MULTIPLIER = ASTEROIDS_FILEDS_DATA.LARGE_ASTEROID_SCALE_MULTIPLIER----------------------------------------------------------------------------
	ASTEROID_SCALE_MULTIPLIER = ASTEROIDS_FILEDS_DATA.ASTEROID_SCALE_MULTIPLIER----------------------------------------------------------------------------
end--------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------
if DAY_ONE_MODE == "ON"---------------------------------------------------------------------------------
then---------------------------------------------------------------------------------------------------------------------------------------------------
	MODNAME = MODNAME..[[_DAY_ONE_VERSION]]---------------------------------------------------------------------------------
end---------------------------------------------------------------------------------------------------------------------------------------------------
if ASTEROIDS_FIELDS_TYPE == "FANTASY" then---------------------------------------------------------------------------------
	createAsteroidsFields(ASTEROIDS_FANTASY_PRESET)---------------------------------------------------------------------------------
end---------------------------------------------------------------------------------------------------------------------------------------------------
if ASTEROIDS_FIELDS_TYPE == "GLUED" then---------------------------------------------------------------------------------
	createAsteroidsFields(ASTEROIDS_GLUED_PRESET)---------------------------------------------------------------------------------
end---------------------------------------------------------------------------------------------------------------------------------------------------
if MULTIPLAYER_MODE == "ON" then
MODDED_TERRAIN_SHAPES_FEATURE = "OFF"
E3_STYLE_RESSOURCES_DEPOSITS = "OFF"
FANTASY_BIOMES_FEATURE = "OFF"
end
--[=[
if PERFORMANCE_MODE == "ON" then
CAVE_BIOMES_FEATURE = "OFF"
MONTAINS_BIOMES_FEATURE = "OFF"
end--]=]
if ASTEROIDS_FIELDS_TYPE == "REALISTIC" then---------------------------------------------------------------------------------
	createAsteroidsFields(ASTEROIDS_REALISTIC_PRESET)---------------------------------------------------------------------------------
end---------------------------------------------------------------------------------------------------------------------------------------------------
SPAWNDISTANCE = 4---------------------------------------------------------------------------------
SPAWNRATE = 500---------------------------------------------------------------------------------
TIMER_VALUE =""
if CREATURES_OVERHAUL=="ON" then
	TIMER_VALUE = tostring(OVERHAUL_TIMER * 3600)---------------------------------------------------------------------------------
end
SPACEBLURVALUE = "0.6"---------------------------------------------------------------------------------
R_VALUE_REF =0---------------------------------------------------------------------------------------------------------------------------------------------------
G_VALUE_REF =0---------------------------------------------------------------------------------------------------------------------------------------------------
B_VALUE_REF =0---------------------------------------------------------------------------------
--ALWAYS = "ALWAYS"---------------------------------------------------------------------------------
BINOC_SUN =""
BINOC_CLEAR =""
if BINOCULARS_TYPE == "SUN" then------------------------------------------------------------------
	BINOC_SUN = "ON"------------------------------------------------------------------------------------------------------------------------------------
else------------------------------------------------------------------------------------------------------------------------------------
	BINOC_SUN = "OFF"------------------------------------------------------------------------------------------------------------------------------------
end------------------------------------------------------------------------------------------------------------------------------------
if BINOCULARS_TYPE == "CLEAR" then------------------------------------------------------------------
	BINOC_CLEAR = "ON"------------------------------------------------------------------
else------------------------------------------------------------------------------------------------------------------------------------
	BINOC_CLEAR = "OFF"------------------------------------------------------------------
end------------------------------------------------------------------------------------------------------------------------------------
SPACESHIPS_SPACE_THRUSTFORCE_S = tostring(SPACESHIPS_SPACE_THRUSTFORCE * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_MAXPSEED_S = tostring(SPACESHIPS_SPACE_MAXPSEED * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_BOOST_FORCE_S = tostring(SPACESHIPS_SPACE_BOOST_FORCE * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_BOOST_MAX_S = tostring(SPACESHIPS_SPACE_BOOST_MAX * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_FALLOFF_S = tostring(SPACESHIPS_SPACE_FALLOFF)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_THRUSTFORCE_S = tostring(SPACESHIPS_PLANET_THRUSTFORCE * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_MAXPSEED_S = tostring(SPACESHIPS_PLANET_MAXPSEED * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_BOOST_FORCE_S = tostring(SPACESHIPS_PLANET_BOOST_FORCE * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_BOOST_MAX_S = tostring(SPACESHIPS_PLANET_BOOST_FORCE * SPACESHIPS_SMALL_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_FALLOFF_S = tostring(SPACESHIPS_PLANET_FALLOFF) ---------------------------------------------------------------------------------
SPACESHIPS_SPACE_THRUSTFORCE_H = tostring(SPACESHIPS_SPACE_THRUSTFORCE * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_MAXPSEED_H = tostring(SPACESHIPS_SPACE_MAXPSEED * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_BOOST_FORCE_H = tostring(SPACESHIPS_SPACE_BOOST_FORCE * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_BOOST_MAX_H = tostring(SPACESHIPS_SPACE_BOOST_MAX * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_FALLOFF_H = tostring(SPACESHIPS_SPACE_FALLOFF) ---------------------------------------------------------------------------------
SPACESHIPS_PLANET_THRUSTFORCE_H = tostring(SPACESHIPS_PLANET_THRUSTFORCE * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_MAXPSEED_H = tostring(SPACESHIPS_PLANET_MAXPSEED * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_FALLOFF_H = tostring(SPACESHIPS_PLANET_FALLOFF * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_BOOST_FORCE_H = tostring(SPACESHIPS_PLANET_BOOST_FORCE * SPACESHIPS_HEAVY_SPEED_MULTIPLIER)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_BOOST_MAX_H = tostring(SPACESHIPS_PLANET_BOOST_MAX)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_THRUSTFORCE = tostring(SPACESHIPS_SPACE_THRUSTFORCE)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_MAXPSEED = tostring(SPACESHIPS_SPACE_MAXPSEED)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_FALLOFF = tostring(SPACESHIPS_SPACE_FALLOFF)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_BOOST_FORCE = tostring(SPACESHIPS_SPACE_BOOST_FORCE)---------------------------------------------------------------------------------
SPACESHIPS_SPACE_BOOST_MAX = tostring(SPACESHIPS_SPACE_BOOST_MAX)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_THRUSTFORCE = tostring(SPACESHIPS_PLANET_THRUSTFORCE)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_MAXPSEED = tostring(SPACESHIPS_PLANET_MAXPSEED)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_FALLOFF = tostring(SPACESHIPS_PLANET_FALLOFF)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_BOOST_FORCE = tostring(SPACESHIPS_PLANET_BOOST_FORCE)---------------------------------------------------------------------------------
SPACESHIPS_PLANET_BOOST_MAX = tostring(SPACESHIPS_PLANET_BOOST_MAX)---------------------------------------------------------------------------------

DISABLE_TRADING_ROUTES = "False"	------------------------------------------------------------------------------------------------------------------------------------------------------------------
if TRADING_ROUTES == "OFF" then------------------------------------------------------------------------------------------------------------------------------------------------------------------
DISABLE_TRADING_ROUTES = "True"------------------------------------------------------------------------------------------------------------------------------------------------------------------
end------------------------------------------------------------------------------------------------------------------------------------------------------------------
BIGWHEELSSIZE = "1.15"------------------------------------------------------------------------------------------------------------------------------------------------------------------
if ROAMER_BIGWHEELS_FEATURE == "ON" then---------------------------------------------------------------------------------
	BIGWHEELSSIZE = "1.5"---------------------------------------------------------------------------------
end------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-----XML    -----------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
FREIGHTER_DESCRIPTOR = readTemplate("FREIGHTER_DESCRIPTOR")---------------------------------------------------------------------------------
CONTENT_FREIGHTERS_SPAWNER = readTemplate("ADDITIONAL_FREIGHTERS")---------------------------------------------------------------------------------
LARGE_FREIGHTERS = readTemplate("LARGE_FREIGHTERS")---------------------------------------------------------------------------------
FREIGHTER_CONTENT = readTemplate("FREIGHTER_CONTENT")---------------------------------------------------------------------------------
TRADINGPOST_SCIENTIFIC_CONTENT = readTemplate("TRADINGPOST_SCIENTIFIC_CONTENT")---------------------------------------------------------------------------------
TRADINGPOST_WARRIOR_CONTENT = readTemplate("TRADINGPOST_WARRIOR_CONTENT")---------------------------------------------------------------------------------
TRADINGPOST_TRADER_CONTENT = readTemplate("TRADINGPOST_TRADER_CONTENT")---------------------------------------------------------------------------------
TRADINGPOST_COMMON_CONTENT = readTemplate("TRADINGPOST_COMMON_CONTENT")---------------------------------------------------------------------------------
KORVAX_TOWER = readTemplate("KORVAX_TOWER")---------------------------------------------------------------------------------
VYK_TOWER = readTemplate("VYK_TOWER")---------------------------------------------------------------------------------
POSITIONS = readTemplate("POSITIONS")---------------------------------------------------------------------------------
REDMAS_CREATURES_BONES_n_ROBOTs_BUTTERFLIES = readTemplate("REDMAS_CREATURES_BONES_n_ROBOTs_BUTTERFLIES")---------------------------------------------------------------------------------
REDMAS_CREATURES_BONES_n_ROBOTs_CRYSTALS = readTemplate("REDMAS_CREATURES_BONES_n_ROBOTs_CRYSTALS")---------------------------------------------------------------------------------
REDMAS_CREATURES_BONES_n_ROBOTs_CRYSTALS_PRED = readTemplate("REDMAS_CREATURES_BONES_n_ROBOTs_CRYSTALS_PRED")---------------------------------------------------------------------------------
REDMAS_CREATURES_BONES_n_ROBOTs_WEIRDFLOAT = readTemplate("REDMAS_CREATURES_BONES_n_ROBOTs_WEIRDFLOAT")---------------------------------------------------------------------------------
REDMAS_CREATURES_BONES_n_ROBOTs_WEIRDROLL = readTemplate("REDMAS_CREATURES_BONES_n_ROBOTs_WEIRDROLL")---------------------------------------------------------------------------------
REDMAS_CREATURES_BONES_n_ROBOTs_WEIRDROLL_PRED = readTemplate("REDMAS_CREATURES_BONES_n_ROBOTs_WEIRDROLL_PRED")---------------------------------------------------------------------------------
REDMAS_CREATURES_GRUNTS = readTemplate("REDMAS_CREATURES_GRUNTS")---------------------------------------------------------------------------------
REDMAS_CREATURES_DIPLOS = readTemplate("REDMAS_CREATURES_DIPLOS")---------------------------------------------------------------------------------
REDMAS_CREATURES_KRITTERS = readTemplate("REDMAS_CREATURES_KRITTERS")---------------------------------------------------------------------------------
SHUTTLE_PROC = readTemplate("SHUTTLE_PROC")---------------------------------------------------------------------------------
SHUTTLE_DESC = readTemplate("SHUTTLE_DESC")---------------------------------------------------------------------------------
FIGHTER_PROC = readTemplate("FIGHTER_PROC")---------------------------------------------------------------------------------
FIGHTER_DESC = readTemplate("FIGHTER_DESC")---------------------------------------------------------------------------------
--SAILCOCKPIT_PROC = readTemplate("SAILCOCKPIT_PROC")---------------------------------------------------------------------------------
--SAILCOCKPIT_DESC = readTemplate("SAILCOCKPIT_DESC")---------------------------------------------------------------------------------
_WINGS_F = readTemplate("_WINGS_F")---------------------------------------------------------------------------------
ACCAx2 = readTemplate("ACCAx2")---------------------------------------------------------------------------------
ACCASMALLx2 = readTemplate("ACCASMALLx2")
--TURBINEFIN = readTemplate("TURBINEFIN")---------------------------------------------------------------------------------
TURBINESAIL = readTemplate("TURBINESAIL")---------------------------------------------------------------------------------
ACCAWINDYx2 = readTemplate("ACCAWINDYx2")---------------------------------------------------------------------------------
TURBINEAAF = readTemplate("TURBINEAAF")---------------------------------------------------------------------------------
MOUSTACHE = readTemplate("MOUSTACHE")---------------------------------------------------------------------------------
CANOPYA = readTemplate("CANOPYA")---------------------------------------------------------------------------------
--ADDITIONAL_SUBWINGS = readTemplate("ADDITIONAL_SUBWINGS")---------------------------------------------------------------------------------
--ADDITIONAL_SUBWINGS_DESC = readTemplate("ADDITIONAL_SUBWINGS_DESC")---------------------------------------------------------------------------------
WINGSX = readTemplate("WINGSX")---------------------------------------------------------------------------------
WINGSFX = readTemplate("WINGSFX")--------------------------------------------------------------------------------------------------
--SANDWORM_NEW_ENTITY = readTemplate("SANDWORM_NEW_ENTITY")---------------------------------------------------------------------------------
E3TRAIL = readTemplate("E3TRAIL")---------------------------------------------------------------------------------
BALL = readTemplate("BALL")---------------------------------------------------------------------------------
BIKEPRES1 = readTemplate("BIKEPRES1")---------------------------------------------------------------------------------
BIKEPRES2 = readTemplate("BIKEPRES2")---------------------------------------------------------------------------------
--BIKE_DESC = readTemplate("BIKE_DESC")---------------------------------------------------------------------------------
BUGGY_LAMPS = readTemplate("BUGGY_LAMPS")---------------------------------------------------------------------------------
KANEDA = readTemplate("KANEDA")---------------------------------------------------------------------------------
DRAGONFLYGARAGE = readTemplate("DRAGONFLYGARAGE")---------------------------------------------------------------------------------
DRAGONFLYCOCKPIT = readTemplate("DRAGONFLYCOCKPIT")---------------------------------------------------------------------------------
DRAGONFLY_WHEELS = readTemplate("DRAGONFLY_WHEELS")---------------------------------------------------------------------------------
DRAGONFLYEXO = readTemplate("DRAGONFLYEXO")---------------------------------------------------------------------------------
_HOVERCRAFT = readTemplate("_HOVERCRAFT")---------------------------------------------------------------------------------
COCKPIT_A_DATA = readTemplate("COCKPIT_A_DATA")-------------------------------------------------------------------------------
COCKPIT_B_DATA = readTemplate("COCKPIT_B_DATA")-------------------------------------------------------------------------------
COCKPIT_D_DATA = readTemplate("COCKPIT_D_DATA")-------------------------------------------------------------------------------
COCKPIT_E_DATA = readTemplate("COCKPIT_E_DATA")-------------------------------------------------------------------------------
COCKPIT_F_DATA = readTemplate("COCKPIT_F_DATA")-------------------------------------------------------------------------------
--DROPSHIPS_PROC = readTemplate("DROPSHIPS_PROC")-------------------------------------------------------------------------------
--SCIENTIFIC_PROC = readTemplate("SCIENTIFIC_PROC")-------------------------------------------------------------------------------
--SCIENTIFIC_DESC = readTemplate("SCIENTIFIC_DESC")-------------------------------------------------------------------------------
KNOWNPROD = readTemplate("KNOWNPROD")
if GIANT_MECHS_BETA_FEATURE ~= "ON" then
	MECHS_SIZE_MULTIPLIER = 1
end
RESIZABLEMECH =
[[
		<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="pCube1" />
		<Property name="NameHash" value="2488506156" />
		<Property name="Type" value="REFERENCE" />
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="0" />
			<Property name="TransZ" value="0" />
			<Property name="RotX" value="0" />
			<Property name="RotY" value="0" />
			<Property name="RotZ" value="0" />
			<Property name="ScaleX" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
			<Property name="ScaleY" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
			<Property name="ScaleZ" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
			<Property name="Name" value="SCENEGRAPH" />
			<Property name="AltID" value="" />
			<Property name="Value" value="MODELS\RGO\MECH_SUIT_PRES.SCENE.MBIN" />
			</Property>
		</Property>
		<Property name="Children" />
		</Property>
]]
RESIZABLESENTINELMECH = [[
	      <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Mech" />
      <Property name="NameHash" value="1952019589" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
        <Property name="ScaleY" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
        <Property name="ScaleZ" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\MECH\ENTITIES\SENTINELMECH.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EXPLODE" />
          <Property name="NameHash" value="2977219630" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.393137" />
            <Property name="TransZ" value="-0.171723" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
            <Property name="ScaleY" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
            <Property name="ScaleZ" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pCube1" />
      <Property name="NameHash" value="2488506156" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
        <Property name="ScaleY" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
        <Property name="ScaleZ" value="]]..MECHS_SIZE_MULTIPLIER..[[" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\RGO\SENTINEL_MECH.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

local replaceIMG = function (IMGNAME,DESTINATION)
	local IMG_CONTENT_TABLE =
	{

		["FILE_DESTINATION"] 		= DESTINATION,
		["EXTERNAL_FILE_SOURCE"] 	= [[..\RGOG\IMAGES\]]..IMGNAME..[[.DDS]]

	}
table.insert(CUSTOM_CONTENT, IMG_CONTENT_TABLE)
end

if MENU_SPLASH_SCREEN ~= "OFF" and MENU_SPLASH_SCREEN ~= "" then
	replaceIMG (MENU_SPLASH_SCREEN,[[TEXTURES\UI\FRONTEND\BACKGROUNDS\STARTBG.DDS]])
end
if HELLO_GAMES_SPASH_SCREEN ~= "OFF" and HELLO_GAMES_SPASH_SCREEN ~= "" then
	replaceIMG (HELLO_GAMES_SPASH_SCREEN,[[TEXTURES\UI\LOADING\HGLOGOBLACKBGSMALL.DDS]])
end
if ENGINE_SPASH_SCREEN ~= "OFF" and ENGINE_SPASH_SCREEN ~= "" then
	replaceIMG(ENGINE_SPASH_SCREEN,[[TEXTURES\UI\LOADING\MIDDLEWAREPAIR.DDS]])
end
if NMS_TITLE ~= "OFF" and NMS_TITLE ~= "" then
	replaceIMG(NMS_TITLE,[[TEXTURES\UI\LOADING\NMSTITLE.DDS]])
end

if TRANSPARENT_OPTIONS_MENU == "ON" then
	TRANSPARENT_OPTIONS_CONTENT =
	{

		["FILE_DESTINATION"] 		= [[TEXTURES\UI\FRONTEND\BACKGROUNDS\OPTIONSBG.DDS]],
		["EXTERNAL_FILE_SOURCE"] 	= [[..\RGOG\IMAGES\OPTIONSBGT.DDS]]

	}
table.insert(CUSTOM_CONTENT, TRANSPARENT_OPTIONS_CONTENT)
end


------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- END REDMAS GAME OVERHAUL BUILDER  -----------------------------------------------------------------------------------------------------
--