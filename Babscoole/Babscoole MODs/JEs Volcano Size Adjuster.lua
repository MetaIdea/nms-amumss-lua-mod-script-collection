SIZECHOICE = 1

InputSIZECHOICE = {SIZECHOICE,
[[
    Choose a volcano size:
    1 - Tiny
    2 - Huge
    Default = 1 | Current = >> ]] .. (SIZECHOICE) .. [[ <<
]]}

while SIZECHOICE do
  SIZECHOICE = GUIF(InputSIZECHOICE,10)

  local minChoice = 1
  local maxChoice = 2

  if SIZECHOICE < minChoice or SIZECHOICE > maxChoice then
    print("         >>> ["..SIZECHOICE.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

VERNAME = ""
MS = ""
MSY = ""
COV = ""
  if SIZECHOICE == 1 then
      VERNAME = "Tiny"
      MS = 0.300000
      MSY = 0.100000
      COV = 0.600000
  elseif SIZECHOICE == 2 then
      VERNAME = "Huge"
      MS = 8.000000
      MSY = 2.000000
      COV = 0.400000
  end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Volcano Size Adjuster - "..VERNAME,
["MOD_DESCRIPTION"] = "Makes Volcanos very small so they do not block POI's or very big",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.16",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  MS},  -- Original "3.000000"
                                {"MaxScaleY", MSY}, -- Original "1.000000"
                                {"Coverage",  COV}, -- Original "0.500000"
                            }
                        }
                    }
                }
            }
        }
    }
}