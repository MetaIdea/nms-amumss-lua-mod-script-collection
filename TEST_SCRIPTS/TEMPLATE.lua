--see also StandardSchemeExtended.lua

function BoostLimit(property, currentValue)
    currentValue = tonumber(currentValue)
    return currentValue >= 400 and currentValue * 0.8 or currentValue
end

function BoostMaxSpeed(_, currentValue)
    return 100
end

function BoostingTurnDamp(_, currentValue)
    return 0.001
end

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME         = '__GC SPACESHIP.pak',
    MODIFICATIONS         = {{
    MBIN_CHANGE_TABLE    = {
    {
        MBIN_FILE_SOURCE    = 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
        EXML_CHANGE_TABLE    = {
            {
                REPLACE_TYPE         = 'All',
                INTEGER_TO_FLOAT    = 'Force',
                VALUE_CHANGE_TABLE     = {
                    {'BoostThrustForce', 'BoostLimit()'},
                    {'BoostMaxSpeed', 'BoostMaxSpeed()'},
                    {'BoostFalloff', '0.1'},
                    {'BoostingTurnDamp', 'BoostingTurnDamp()'},
                    {'DirectionBrakeMin', '()'},
                    {'DirectionBrake', 'DirectionBrake()'},
                },
            },
        }
    }
}}}}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED