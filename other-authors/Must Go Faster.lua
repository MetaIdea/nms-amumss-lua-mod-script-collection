-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"
local GUIF_WAIT = 0
local GROUND_WALK_SPEED = 4.4
local GROUND_RUN_SPEED = 8
local SPEED_MULTIPLIER = 2
local SPEED_MULTIPLIER_LOW_G = 2

--[[
<Property name="GroundWalkSpeed" value="4.400000" />
<Property name="GroundRunSpeed" value="8.000000" />
<Property name="GroundWalkSpeedLowG" value="1.600000" />
<Property name="GroundRunSpeedLowG" value="3.500000" />
--]]

-- Interactive user input for speed multipliers
local input_speed_multiplier = { SPEED_MULTIPLIER,
    [[
    Would you like to modify the speed multiplier for default gravity?
    Default = 1 | Current = >> ]] .. SPEED_MULTIPLIER .. [[ <<
]] }

local speed_multiplier = GUIF(input_speed_multiplier, GUIF_WAIT)

local input_speed_multiplier_low_g = { SPEED_MULTIPLIER_LOW_G,
    [[
    Would you like to modify the speed multiplier for low gravity?
    Default = 1 | Current = >> ]] .. SPEED_MULTIPLIER_LOW_G .. [[ <<
]] }

local speed_multiplier_low_g = GUIF(input_speed_multiplier_low_g, GUIF_WAIT)

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = string.format("Must Go Faster %s.%s", NMS_VERSION, MOD_VERSION),
   ["MOD_AUTHOR"] = "NilOutput",
   ["LUA_AUTHOR"] = "NilOutput",
   ["MOD_DESCRIPTION"] = "Everything is too slow—we must go faster! This mod accepts a speed multiplier for both normal and low gravity walking and running speeds and uses the default values of those speeds at normal gravity as the basis for calculations.",
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["REPLACE_TYPE"] = "ALL",
                           ["VALUE_CHANGE_TABLE"] = {
                               {"GroundWalkSpeed", (GROUND_WALK_SPEED * speed_multiplier)},
                               {"GroundRunSpeed", (GROUND_RUN_SPEED * speed_multiplier)},
                               {"GroundWalkSpeedLowG", (GROUND_WALK_SPEED * speed_multiplier_low_g)},
                               {"GroundRunSpeedLowG", (GROUND_RUN_SPEED * speed_multiplier_low_g)}
                           }
                       }
                   }
               }
           }
       }
   }
}