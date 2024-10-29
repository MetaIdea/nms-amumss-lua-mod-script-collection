Multiplier = 1

InputMultiplier = {Multiplier,
[[
    Choose a speed multiplier:
    1  - 2x
    2  - 5x
    3  - 10x
    4  - 25x
    5  - 50x
    6  - 100x
    7  - 1000x
    8  - 10000x
    9  - 100000x
    10 - 1000000x
    11 - 10000000x
    12 - 100000000x
    Default = 1 | Current = >> ]] .. (Multiplier) .. [[ <<
]]}

while Multiplier do
  Multiplier = GUIF(InputMultiplier,20)

  local minChoice = 1
  local maxChoice = 12

  if Multiplier < minChoice or Multiplier > maxChoice then
    print("         >>> ["..Multiplier.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

if Multiplier == 1 then
  Multiplier = 2.5
elseif Multiplier == 2 then
  Multiplier = 1
elseif Multiplier == 3 then
  Multiplier = 0.5
elseif Multiplier == 4 then
  Multiplier = 0.2
elseif Multiplier == 5 then
  Multiplier = 0.1
elseif Multiplier == 6 then
  Multiplier = 0.05
elseif Multiplier == 7 then
  Multiplier = 0.005
elseif Multiplier == 8 then
  Multiplier = 0.0005
elseif Multiplier == 9 then
  Multiplier = 0.00005
elseif Multiplier == 10 then
  Multiplier = 0.000005
elseif Multiplier == 11 then
  Multiplier = 0.0000005
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Increased Stack Size.pak",
["MOD_AUTHOR"]    = "liuyueowo",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.21",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TimeToMake", Multiplier},
                            }
                        },
                    }
                }
            }
        }
    }
}