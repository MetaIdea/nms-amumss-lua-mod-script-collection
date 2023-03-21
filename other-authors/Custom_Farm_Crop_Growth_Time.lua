local TimeInSeconds = 30
local StageOne,StageTwo,StageThree,StageFour

while true do
  TimeInSeconds = GUIF( {TimeInSeconds,[[Input growth time in seconds. Must be an EVEN number!
  Minimum value is 6 seconds. Anything less can bork the script. 
  (default: 30 Minimum: 6)]]} )

--print("TimeInSeconds = "..tostring(TimeInSeconds)) -- just comment out

  if type(TimeInSeconds) ~= "number" then
    print("Input must be a number, please re-try")
  elseif TimeInSeconds < 6 or TimeInSeconds%2 == 1 then
    print("Invalid number defined: Must be an EVEN numeric value of at least 6, please re-try")
  else
    StageOne = (TimeInSeconds // 2) - 1 -- using the floor division operator, added parentheses to clearly show intent
    StageTwo = math.floor(TimeInSeconds / 2) -- using math.floor()
    StageThree = math.floor(TimeInSeconds - 1)
    StageFour = TimeInSeconds

-- just comment out this group
--print("  StageOne = "..tostring(StageOne))
--print("  StageTwo = "..tostring(StageTwo))
--print("StageThree = "..tostring(StageThree))
--print(" StageFour = "..tostring(StageFour))
--print("break out of input loop")
--print("")

    break
  end
end
	
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Custom Farm Crop Growth Time", -- do not use / or \ in MOD_FILENAME.  Use underscore
  ["MOD_DESCRIPTION"]		= "Changes the growth time of all farm crops to a player defined value (default 30 seconds)",
  ["MOD_AUTHOR"]			= "Kaizlin",
  ["MOD_VERSION"]			= "1.0",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMALBUMEN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
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
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMVENOMSAC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP0",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"1"},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP1_ENTER",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	StageOne},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP1",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	StageTwo},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP2_ENTER",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	StageThree},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP2",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	StageFour},
							}	
						},
					}
				},
			}
		},
	}
}