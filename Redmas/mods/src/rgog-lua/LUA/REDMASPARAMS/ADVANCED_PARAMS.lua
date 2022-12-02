
----------------------------------------------------------------------------------------
--
-- ( Ctrl + S to save ) 
--
------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- **ADVANCED PARAMS**
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
DAY_ONE_MODE = "OFF"--( put "ON" the day one of a big vanilla update while mbincompiler is being updated to disable some features
PERFORMANCE_MODE = "OFF" --( Putting ON will reduce CPU-DEMANDING FEATURES )
MULTIPLAYER_MODE = "OFF" --( Put On if you play heavily in Multiplayer )
----------------------------------------------------------------------------------
-- SPACESHIPS CONTROLS REWORK
SPACESHIPS_SPACE_THRUSTFORCE = 140
SPACESHIPS_SPACE_MAXPSEED = 2420
SPACESHIPS_SPACE_FALLOFF = 0.007
SPACESHIPS_SPACE_BOOST_FORCE = SPACESHIPS_SPACE_THRUSTFORCE*4
SPACESHIPS_SPACE_BOOST_MAX = 2420
--
SPACESHIPS_PLANET_THRUSTFORCE = 100
SPACESHIPS_PLANET_MAXPSEED = 222
SPACESHIPS_PLANET_FALLOFF = 0.007
SPACESHIPS_PLANET_BOOST_FORCE = 200
SPACESHIPS_PLANET_BOOST_MAX = 280
--
SPACESHIPS_SMALL_SPEED_MULTIPLIER = 1.111
SPACESHIPS_HEAVY_SPEED_MULTIPLIER = 1
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- SPACESHIPS CAMERAS
SMALL_SPACESHIPS_MIN_DIST = 1
SMALL_SPACESHIPS_MAX_DIST = 60
SMALL_SPACESHIPS_UP_MIN_DIST = 0
SMALL_SPACESHIPS_UP_MAX_DIST = 15
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
LONG_SPACESHIPS_MIN_DIST = 5
LONG_SPACESHIPS_MAX_DIST = 60
LONG_SPACESHIPS_UP_MIN_DIST = 1
LONG_SPACESHIPS_UP_MAX_DIST = 25
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
SMALL_SPACESHIPS_MIN_DIST = tostring(SMALL_SPACESHIPS_MIN_DIST)
SMALL_SPACESHIPS_MAX_DIST = tostring(SMALL_SPACESHIPS_MAX_DIST)
SMALL_SPACESHIPS_UP_MIN_DIST = tostring(SMALL_SPACESHIPS_UP_MIN_DIST)
SMALL_SPACESHIPS_UP_MAX_DIST = tostring(SMALL_SPACESHIPS_UP_MAX_DIST)
-----------------------------------------
LONG_SPACESHIPS_MIN_DIST = tostring(LONG_SPACESHIPS_MIN_DIST)
LONG_SPACESHIPS_MAX_DIST = tostring(LONG_SPACESHIPS_MAX_DIST)
LONG_SPACESHIPS_UP_MIN_DIST = tostring(LONG_SPACESHIPS_UP_MIN_DIST)
LONG_SPACESHIPS_UP_MAX_DIST = tostring(LONG_SPACESHIPS_UP_MAX_DIST)
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- ASTEROID FIELDS PARAMS
--
ASTEROIDS_FANTASY_PRESET ={
	["RARE_ASTEROID_SPACING_MULTIPLIER"] = "1",
	["LARGE_ASTEROID_SPACING_MULTIPLIER"] = "52",
	["ASTEROID_SPACING_MULTIPLIER"] = "12",
	["RARE_ASTEROID_SCALE_MULTIPLIER"] = "64",
	["LARGE_ASTEROID_SCALE_MULTIPLIER"] = "52",
	["ASTEROID_SCALE_MULTIPLIER"] = "4"
}
--
ASTEROIDS_GLUED_PRESET ={
	["RARE_ASTEROID_SPACING_MULTIPLIER"] = "1",
	["LARGE_ASTEROID_SPACING_MULTIPLIER"] = "16",
	["ASTEROID_SPACING_MULTIPLIER"] = "4",
	["RARE_ASTEROID_SCALE_MULTIPLIER"] = "16",
	["LARGE_ASTEROID_SCALE_MULTIPLIER"] = "8",
	["ASTEROID_SCALE_MULTIPLIER"] = "2"
}
--
ASTEROIDS_REALISTIC_PRESET ={
	["RARE_ASTEROID_SPACING_MULTIPLIER"] = "1",
	["LARGE_ASTEROID_SPACING_MULTIPLIER"] = "64",
	["ASTEROID_SPACING_MULTIPLIER"] = "16",
	["RARE_ASTEROID_SCALE_MULTIPLIER"] = "32",
	["LARGE_ASTEROID_SCALE_MULTIPLIER"] = "16",
	["ASTEROID_SCALE_MULTIPLIER"] = "4"
}
--------------------------------------------------------------------------------------------------------------
PROCEDURALMAX = 500  -- This is the number of procedural generated new params for this script
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--INIT = "FOR_LIBERTY"